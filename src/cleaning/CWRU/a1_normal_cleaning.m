clear;
N = 1024;
M = 100;
x = zeros(N, M);

load('data/external/CWRU/normal_baseline/normal_1.mat');
for m=1:M
    head = N * (m - 1) + 1;
    tail = N * m;
    x(:, m) = X098_DE_time(head:tail, :);
end
clearvars -except x;

data_sink_path = 'data/interim/CWRU/a1_normal.mat';
save(data_sink_path, 'x');