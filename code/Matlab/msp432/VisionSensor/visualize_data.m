%clear all;

%load('data/2016-08-11_11-49_slow_fast!!!_with_markers/data.mat');
load('data/2016-08-11_11-49_slow_fast!!!_with_markers/data.mat');

start_index = 10;
end_index = 150;

vy = -vy_msp(end_index:-1:start_index);

lp_order = 6;
lp_filter = [1 2 3 3 2 1]; %ones(1,lp_order);
lp_filter = lp_filter./sum(lp_filter);      % normalize
vy_LP = conv(vy,lp_filter);

%LP = designfilt('lowpassiir', 'FilterOrder', 3, 'HalfPowerFrequency', 0.2);
%vy_LP = filter(LP, vy_msp);%conv(vy_msp,lp_filter);

%VY = fft(vy_msp, 2000);
%VY(200:1800) = zeros(1,1601);
%vy_LP = ifft(VY);

plot([1:length(vy)], vy(1:end)*velocity_scale, 'Linewidth', 0.5);
hold on;
plot([1:length(vy)], vy_LP((lp_order/2):end_index-start_index+(lp_order/2))*velocity_scale, 'Linewidth', 2);
grid on;
xlabel('sensor reading number');
ylabel('velocity (m/s)');
ylim([-0.2 1.8]);
