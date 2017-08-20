% This MATLAB script captures data sets from the MSP432 over UART. One
% data set consists of an estimated displacement vector (dx, dy).
%
% Use the MSP432 firmware "MSP432_DisplacementLogger_V1"
% UART_SEND = 0, FRAM_STORAGE = 1, FRAM_READOUT = 1
%

clear all;

serialport = '/dev/tty.usbmodem00000001';
baudrate = 460800;

capture_iterations = 30;

% Create the serial object
serialObject = serial(serialport, 'BaudRate', baudrate, 'DataBits', 8, 'StopBits', 1, 'InputBufferSize', 26000, 'Timeout', 10);
fopen(serialObject);

for i = 1:capture_iterations

    % receive estimated displacement vector
    dx_msp(i) = fread(serialObject, 1, 'int8');
    dy_msp(i) = fread(serialObject, 1, 'int8');

end

flow = opticalFlow(dx_msp, dy_msp);
plot(flow, 'ScaleFactor', 1);
ylim([-4 4]);

% Clean up the serial object
fclose(serialObject);
delete(serialObject);
clear serialObject;