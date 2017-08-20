clear all;

% Settings
serialport = '/dev/tty.usbmodem1413';   % Serial Port
baudrate = 115200;                          % UART Baudrate

capture_iterations = 30;                    % Number of Iterations

numpixels_x = 112;                          % Image Size X [pixels]
numpixels_y = 112;                          % Image Size Y [pixels]

% Create the serial object
serialObject = serial(serialport, 'BaudRate', baudrate, ...
'DataBits', 8, 'StopBits', 1, 'InputBufferSize', 26000, 'Timeout', 30);
fopen(serialObject);

for i = 0:(capture_iterations-1)
    raw = fread(serialObject, numpixels_x*numpixels_y, 'uint8');
    if length(raw) == 0
        i
        break;
    end
    temp = cast(reshape(raw, [numpixels_x numpixels_y]), 'double');
    I(:,:,i+1) = (temp-min(temp(:)))/(max(temp(:)) - min(temp(:)));
end

fclose(serialObject);

implay(I,20);