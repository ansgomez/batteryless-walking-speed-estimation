clear all;

x_size = 112;
y_size = 112;

num_images = 10000;

one_file = 1;

%videoOut = vision.VideoPlayer;
%videoOut.Name  = 'Video';

if one_file
    fid = fopen('/Users/thomas/Dropbox/Masterthesis/MA_TransientOpticalFlow/experiments/IMAGES3.BIN', 'r');
    %fid = fopen('/Volumes/NO NAME/IMAGES.BIN', 'r');
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
    I(:,:,i+1) = (temp-min(temp(:)))/(max(temp(:)) - min(temp(:)));
    I_raw(:,:,i+1) = temp;
end

implay(I,20)

if one_file
    fclose(fid);
end
