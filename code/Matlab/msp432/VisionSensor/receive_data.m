% This MATLAB script captures data sets from the MSP432 over UART. One
% data set consists of two images, an estimated optical flow field and a velocity vector.
% Those values are stored in a new folder. The data sets are then compared
% to values estimated with MATLAB (with the same algorithm) to show that
% the algorithm is implemented correctly.
%
% Use the MSP432 firmware "MSP432_EH_VisionSensor"
%

clear all;

% select if data is received over UART (0) or via SDcard (1)
receive_mode = 0;

% Settings
serialport = '/dev/tty.usbmodem00000001';   % Serial Port
baudrate = 460800;                          % UART Baudrate: 460800
SDcard_path = '/Volumes/NO NAME/';

capture_iterations = 20;                    % Number of Iterations

velocity_scale = 1/8 *(0.4/95/62*160) / 0.02687;            % Scale for Velocity -> 1/16 due to left-shift on MSP
                                            %                    -> time between images: 26.87ms
                                            %                    -> px/cm: 
                                            %                    ???

numpixels_x = 112;                          % Image Size X [pixels]
numpixels_y = 112;                          % Image Size Y [pixels]
blocksize_x = 52;                            % Block Size X [pixels]
blocksize_y = 48;                            % Block Size Y [pixels]
searcharea_x_neg = -3;                      % Search Area negative X [pixels]
searcharea_x_pos = 3;                       % Search Area positive Y [pixels]
searcharea_y_neg = -8;                      % Search Area negative X [pixels]
searcharea_y_pos = 8;                       % Search Area positive Y [pixels]

% Calculate effective image dimensions and number of blocks
eff_numpixels_x = numpixels_x - (-searcharea_x_neg) - searcharea_x_pos;
eff_numpixels_y = numpixels_y - (-searcharea_y_neg) - searcharea_y_pos;
numblocks_x = floor(eff_numpixels_x/blocksize_x);
numblocks_y = floor(eff_numpixels_y/blocksize_y);

% Create new folder for data
folder = strcat('data/', datestr(now,'yyyy-mm-dd_HH-MM'));
mkdir(folder);

%folder = uigetdir;
%load(strcat(folder,'/data.mat'));

if receive_mode == 0
    % Create the serial object
    serialObject = serial(serialport, 'BaudRate', baudrate, ...
    'DataBits', 8, 'StopBits', 1, 'InputBufferSize', 10000000, 'Timeout', 60);
    fopen(serialObject);
    %fread(serialObject, 1, 'int8');
end

img_raw = zeros(capture_iterations,2,numpixels_x,numpixels_y);

error = 0;  % counting variable for errors
for i = 1:capture_iterations
    
    % receive the two images for each iteration
    for n = 1:2
        if receive_mode == 0
            % receive image over UART
            img_raw(i,n,:,:) = reshape(fread(serialObject, numpixels_x*numpixels_y, 'uint8'), [numpixels_x numpixels_y]);
        else
            % read image from SD card
            fid = fopen(strcat(SDcard_path, int2str((i-1)*2+(n-1))), 'r');
            img_raw(i,n,:,:) = reshape(fread(fid, numpixels_x*numpixels_y, 'uint8'), [numpixels_x numpixels_y]);
            fclose(fid);
        end
            
        % store raw image (BIN)
        %fid = fopen(strcat(folder, '/raw_image', int2str(i), '_', int2str(n) ,'.bin'), 'w');
        %fwrite(fid, img_raw(i,n,:,:), 'uint8');
        %fclose(fid);

        % create/store PNG image
        img(n,:,:) = img_raw(i,n,:,:);
        img(n,:,:) = cast(img(n,:,:), 'double');
        img(n,:,:) = (img(n,:,:)-min(img(n,:)))/(max(img(n,:)) - min(img(n,:)));
        imwrite(reshape(img(n,:,:), [numpixels_x numpixels_y]), strcat(folder, '/image', int2str(i), '_', int2str(n) ,'.png'));
    end
    
    if receive_mode == 0
        % receive estimated displacement vectors
        dx_msp(i,:,:) = reshape(fread(serialObject, numblocks_x*numblocks_y, 'int8'), [numblocks_x numblocks_y]);
        dy_msp(i,:,:) = reshape(fread(serialObject, numblocks_x*numblocks_y, 'int8'), [numblocks_x numblocks_y]);
    else
        % read estimated displacement vectors from SD card
        fid = fopen(strcat(SDcard_path, int2str(i*2+9998)), 'r');
        dx_msp(i,:,:) = reshape(fread(fid, numblocks_x*numblocks_y, 'int8'), [numblocks_x numblocks_y]);
        fclose(fid);
        fid = fopen(strcat(SDcard_path, int2str(i*2+9999)), 'r');
        dy_msp(i,:,:) = reshape(fread(fid, numblocks_x*numblocks_y, 'int8'), [numblocks_x numblocks_y]);
        fclose(fid);
    end

    if receive_mode == 0
        % receive estimated velocity vector
        vx_msp(i) = fread(serialObject, 1, 'int8');
        vy_msp(i) = fread(serialObject, 1, 'int8');
        
        % SKIP LAST BYTE
        % fread(serialObject, 1, 'int8');
    else
        % read estimated velocity vector from SD card
        % NOT USED
    end
    
    % Make the same calculation in MATLAB
    img1(:,:) = img_raw(i,1,:,:);
    img2(:,:) = img_raw(i,2,:,:);
    [dx_matlab(i,:,:), dy_matlab(i,:,:)] = ...
        block_matching(img1, img2, [blocksize_x blocksize_y], ...
        [searcharea_x_neg searcharea_x_pos searcharea_y_neg searcharea_y_pos]);
    [vx_matlab(i), vy_matlab(i)] = ...
        displacement_estimation_AVG(dx_matlab(i,:,:), dy_matlab(i,:,:));

    
    % Evaluate number of errors
    if( isequal(dx_matlab(i,:), dx_msp(i,:)) && isequal(dy_matlab(i,:), dy_msp(i,:)) )
        % Everything is OK
    else
        error = error + length(find(dx_matlab(i,:) ~= dx_msp(i,:))) + length(find(dy_matlab(i,:) ~= dy_msp(i,:)));
    end
    
    % Visualize results
    
    dx_stuffed = zeros(numpixels_x,numpixels_y);
    dx_stuffed((-searcharea_y_neg+floor(blocksize_y/2)):blocksize_y:(numpixels_y-searcharea_y_pos-floor(blocksize_y/2)), ...
        (-searcharea_x_neg+floor(blocksize_x/2)):blocksize_x:(numpixels_x-searcharea_x_pos-floor(blocksize_x/2))) = ...
        reshape(dx_msp(i,:,:), [numblocks_y numblocks_x]);
    dy_stuffed = zeros(numpixels_x,numpixels_y);
    dy_stuffed((-searcharea_y_neg+floor(blocksize_y/2)):blocksize_y:(numpixels_y-searcharea_y_pos-floor(blocksize_y/2)), ...
        (-searcharea_x_neg+floor(blocksize_x/2)):blocksize_x:(numpixels_x-searcharea_x_pos)-floor(blocksize_x/2)) = ...
        reshape(dy_msp(i,:,:), [numblocks_y numblocks_x]);
    
    %figure('position',[0 0 1200 300]);
    figure(1);
    % Subplot 1
    subplot1 = subplot(1,3,1);
    imshow(reshape(img(1,:,:), [numpixels_x numpixels_y]));     % Plot Image 1
    set(subplot1, 'XGrid','on','YGrid','on','GridAlpha',1,'GridColor', [0 0 0], ...
        'MinorGridAlpha',1,'MinorGridColor', [0 0 1], ...
        'MinorGridLineStyle',':','XMinorGrid','on','YMinorGrid','on');  % Configure Grid
    subplot1.XTick = ((-searcharea_x_neg):blocksize_x:(numpixels_x-searcharea_x_pos));
    subplot1.YTick = ((-searcharea_y_neg):blocksize_y:(numpixels_y-searcharea_y_pos));
    hold on;
    quiver(dx_stuffed, dy_stuffed, 'LineWidth', 2,'Color',[1 0 0], ...
        'AutoScaleFactor', 1, 'AutoScale','off');               % Plot optical Flow
    xlabel('x-axis'); ylabel('y-axis'); title('Image 1');
    xlim([1 numpixels_x]); ylim([1 numpixels_y]);
    axis on;
    hold off;
    % Subplot 2
    subplot2 = subplot(1,3,2);
    imshow(reshape(img(2,:,:), [numpixels_x numpixels_y]));   % Plot Image 2
    set(subplot2, 'XGrid','on','YGrid','on','GridAlpha',1,'GridColor', [0 0 0], ...
        'MinorGridAlpha',1,'MinorGridColor', [0 0 1], ...
        'MinorGridLineStyle',':','XMinorGrid','on','YMinorGrid','on');  % Configure Grid
    subplot2.XTick = ((-searcharea_x_neg):blocksize_x:(numpixels_x-searcharea_x_pos));
    subplot2.YTick = ((-searcharea_y_neg):blocksize_y:(numpixels_y-searcharea_y_pos));
    hold on;
    quiver(dx_stuffed, dy_stuffed, 'LineWidth', 2,'Color',[1 0 0], ...
        'AutoScaleFactor', 1, 'AutoScale','off');                 % Plot optical Flow
    xlabel('x-axis'); ylabel('y-axis');
    title('Image 2');
    xlim([1 numpixels_x]); ylim([1 numpixels_y]);
    axis on;
    hold off;
    % Subplot 3
    subplot(1,3,3);
    histogram2(dx_msp(i,:,:), dy_msp(i,:,:));
    xlabel('x-direction'); ylabel('y-direction');
    title('Displacement Vector Histogram');
    xlim([searcharea_x_neg searcharea_x_pos]); ylim([searcharea_y_neg searcharea_y_pos]);

    % Save Figure
    if ( mod(i,10) == 1 )
        savefig(strcat(folder, '/figure', int2str(i),'.fig'));
    end
end

    % Clean up the serial object
    flushinput(serialObject);
    fclose(serialObject);
    delete(serialObject);
    clear serialObject;

% Output the number of errors
if ( error == 0 )
    disp('No errors! MSP432 made the same calculations as MATLAB.');
else
    fprintf('Number of Errors: %d\n', error);
    warning('Errors detected!');
end

% store data in MAT file
clear dx_stuffed dy_stuffed fid i img img1 img2 n serialport subplot1 subplot2 ans;
save(strcat(folder,'/data.mat'));