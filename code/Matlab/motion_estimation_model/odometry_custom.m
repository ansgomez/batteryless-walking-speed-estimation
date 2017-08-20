clear all;

x_size = 112;
y_size = 112;

num_images = 3023;

%fid = fopen('/Users/thomas/Dropbox/Masterthesis/MA_TransientOpticalFlow/experiments/IMAGES12.BIN', 'r');
load('inputs/sequence_0_1_0_2_0.mat');
I = I_raw;
clear I_raw;

numpixels_x = 112;                          % Image Size X [pixels]
numpixels_y = 112;                          % Image Size Y [pixels]
%blocksize_x = 48;                          % Block Size X [pixels]
%blocksize_y = 48;                          % Block Size Y [pixels]
searcharea_x_neg = -8;                      % Search Area negative X [pixels]
searcharea_x_pos = 8;                       % Search Area positive Y [pixels]
searcharea_y_neg = -8;                      % Search Area negative X [pixels]
searcharea_y_pos = 8;                       % Search Area positive Y [pixels]

% Calculate effective image dimensions and number of blocks
eff_numpixels_x = numpixels_x - (-searcharea_x_neg) - searcharea_x_pos;
eff_numpixels_y = numpixels_y - (-searcharea_y_neg) - searcharea_y_pos;
%numblocks_x = floor(eff_numpixels_x/blocksize_x);
%numblocks_y = floor(eff_numpixels_y/blocksize_y);

pos_x_hist = zeros(1,num_images);
pos_y_hist = zeros(1,num_images);
pos_x_avg = zeros(1,num_images);
pos_y_avg = zeros(1,num_images);
pos_x_cust = zeros(1,num_images);
pos_y_cust = zeros(1,num_images);
pos_x_pc = zeros(1,num_images);
pos_y_pc = zeros(1,num_images);


for i = 0:(num_images-1)
    %raw = fread(fid, x_size*y_size, 'uint8');
    %if length(raw) == 0
    %    i
    %    break;
    %end
    %temp = cast(reshape(raw, [x_size y_size]), 'double');
    %I(:,:,i+1) = temp;%(temp-min(temp(:)))/(max(temp(:)) - min(temp(:)));
    
    if (i > 0)
        % Block Matching
        img1(:,:) = I(:,:,i);
        img2(:,:) = I(:,:,i+1);
        
            % Two Blocks
            [dx_matlab_2b, dy_matlab_2b] = ...
                block_matching(img1, img2, [48 48], ...
                [searcharea_x_neg searcharea_x_pos searcharea_y_neg searcharea_y_pos]);
            
            % Histogram Method
            [dx, dy] = displacement_estimation_HIST(dx_matlab_2b, dy_matlab_2b,...
                [searcharea_x_neg searcharea_x_pos searcharea_y_neg searcharea_y_pos]);
            pos_x_hist(i+1) = pos_x_hist(i) + dx;
            pos_y_hist(i+1) = pos_y_hist(i) + dy;
            
            % Averaging
            [dx, dy] = displacement_estimation_AVG(dx_matlab_2b, dy_matlab_2b);
            pos_x_avg(i+1) = pos_x_avg(i) + dx;
            pos_y_avg(i+1) = pos_y_avg(i) + dy;

            % Custom
            [dx, dy] = displacement_estimation(dx_matlab_2b, dy_matlab_2b);
            pos_x_cust(i+1) = pos_x_cust(i) + dx;
            pos_y_cust(i+1) = pos_y_cust(i) + dy;

    end
    i
end

% Scale Factor (m/px)
scale_m_px = (0.4/95);
% delta t between two images (s)
delta_t = 1/20;

% Plot Displacement
plot(pos_x_avg.*scale_m_px,pos_y_avg.*scale_m_px, ...
    pos_x_hist.*scale_m_px,pos_y_hist.*scale_m_px, ...
    pos_x_cust.*scale_m_px,pos_y_cust.*scale_m_px);
%xlim([-0.5 2.5]);
%ylim([-0.5 0.5]);
grid;
legend('block size = 48, Average', 'block size = 48, Histogram', 'block size = 48, Custom');

% Plot x-Displacement in time scale
figure;
plot([1:length(pos_x_avg)],pos_x_avg.*scale_m_px, ...
    [1:length(pos_x_hist)],pos_x_hist.*scale_m_px, ...
    [1:length(pos_x_cust)],pos_x_cust.*scale_m_px, ...
    find(pos_x_REF ~= 0), pos_x_REF(pos_x_REF ~= 0), 'x');
grid
legend('block size = 48, Averaging', 'block size = 48, Histogram',...
    'block size = 48, Custom', 'Reference Points');
xlabel('Number of Frame');
ylabel('Position in x-Direction (m)');
xlim([1 3000]);

% Plot Velocity in time scale
% figure;
% plot([1:length(pos_x_ob)],[0 diff(pos_x_ob)].*scale_m_px./delta_t, ...
%     [1:length(pos_x_avg)],[0 diff(pos_x_avg)].*scale_m_px./delta_t, ...
%     [1:length(pos_x_hist)],[0 diff(pos_x_hist)].*scale_m_px./delta_t, ...
%     [1:length(pos_x_avg_3)],[0 diff(pos_x_avg_3)].*scale_m_px./delta_t, ...
%     [1:length(pos_x_hist_3)],[0 diff(pos_x_hist_3)].*scale_m_px./delta_t, ...
%     [1:length(pos_x_avg_6)],[0 diff(pos_x_avg_6)].*scale_m_px./delta_t, ...
%     [1:length(pos_x_hist_6)],[0 diff(pos_x_hist_6)].*scale_m_px./delta_t);
% legend('block size = 96', 'block size = 48, Averaging', 'block size = 48, Histogram',...
%     'block size = 32, Averaging', 'block size = 32, Histogram', ...
%     'block size = 16, Averaging', 'block size = 16, Histogram');
% grid


%fclose(fid);
