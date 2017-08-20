load('results/pos_vs_time_block_sizes_AVG_HIST_NEW.MAT')

diff_x_ob = abs(pos_x_ob(find(pos_x_REF ~= 0)).*scale_m_px - pos_x_REF(pos_x_REF ~= 0));
diff_x_avg = abs(pos_x_avg(find(pos_x_REF ~= 0)).*scale_m_px - pos_x_REF(pos_x_REF ~= 0));
diff_x_avg_3 = abs(pos_x_avg_3(find(pos_x_REF ~= 0)).*scale_m_px - pos_x_REF(pos_x_REF ~= 0));
diff_x_avg_6 = abs(pos_x_avg_6(find(pos_x_REF ~= 0)).*scale_m_px - pos_x_REF(pos_x_REF ~= 0));
diff_x_hist = abs(pos_x_hist(find(pos_x_REF ~= 0)).*scale_m_px - pos_x_REF(pos_x_REF ~= 0));
diff_x_hist_3 = abs(pos_x_hist_3(find(pos_x_REF ~= 0)).*scale_m_px - pos_x_REF(pos_x_REF ~= 0));
diff_x_hist_6 = abs(pos_x_hist_6(find(pos_x_REF ~= 0)).*scale_m_px - pos_x_REF(pos_x_REF ~= 0));

plot(find(pos_x_REF ~= 0), diff_x_ob, find(pos_x_REF ~= 0), diff_x_avg, ...
    find(pos_x_REF ~= 0), diff_x_hist, find(pos_x_REF ~= 0), diff_x_avg_3, ...
    find(pos_x_REF ~= 0), diff_x_hist_3, find(pos_x_REF ~= 0), diff_x_avg_6, ...
    find(pos_x_REF ~= 0), diff_x_hist_6);

grid;
legend('block size = 96', 'block size = 48, Averaging', 'block size = 48, Histogram',...
    'block size = 32, Averaging', 'block size = 32, Histogram', ...
    'block size = 16, Averaging', 'block size = 16, Histogram');