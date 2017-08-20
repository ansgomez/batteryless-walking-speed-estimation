clear all;

x_size = 112;
y_size = 112;

num_images = 10000;

one_file = 1;

if one_file
    fid = fopen('/Volumes/NO NAME/IMAGES.BIN', 'r');
end

for i = 0:(num_images-1)
    if ~one_file
        fid = fopen(strcat('/Volumes/NO NAME/', int2str(i)), 'r');
        raw = fread(fid, x_size*y_size, 'uint8');
        temp = cast(reshape(raw, [x_size y_size]), 'double');
        fclose(fid);
    else
        raw = fread(fid, x_size*y_size, 'uint8');
        if length(raw) == 0
            i
            break;
        end
        temp = cast(reshape(raw, [x_size y_size]), 'double');
    end
    temp = (temp-min(temp(:)))/(max(temp(:)) - min(temp(:)));
    
    % Store binary
    %fid_r = fopen(strcat('/Volumes/NO NAME/image', int2str(i), '.bin'), 'w');
    %fwrite(fid_r, raw, 'uint8');
    %fclose(fid_r);
    
    %imshow(temp );
    %pause;
    imwrite(temp, strcat('/Volumes/NO NAME/image', int2str(i), '.png'));
end

if one_file
    fclose(fid);
end
