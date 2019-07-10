clear;
N = 1024;
M = 100;
x = zeros(N, M);

load('data/external/CWRU/12k_drive_end_bearing_fault/OR014@6_3.mat');
for m=1:M
    head = N * (m - 1) + 1;
    tail = N * m;
    x(:, m) = X200_DE_time(head:tail, :);
end
clearvars -except x;

data_sink_path = 'data/interim/CWRU/d2_or_fault_014.mat';
save(data_sink_path, 'x');