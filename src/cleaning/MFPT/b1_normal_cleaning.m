clear;
N = 1024;
M = 120;

load('data/external/MFPT/1 - Three Baseline Conditions/baseline_1.mat');
for m=1:40
    head = N * (m - 1) + 1;
    tail = N * m;
    x(:, m) = bearing.gs(head:tail, :);
end

load('data/external/MFPT/1 - Three Baseline Conditions/baseline_2.mat');
for m=41:80
    head = N * (m - 1) + 1;
    tail = N * m;
    x(:, m) = bearing.gs(head:tail, :);
end

load('data/external/MFPT/1 - Three Baseline Conditions/baseline_3.mat');
for m=81:120
    head = N * (m - 1) + 1;
    tail = N * m;
    x(:, m) = bearing.gs(head:tail, :);
end

data_sink_path = 'data/interim/MFPT/b1_normal.mat';
save(data_sink_path, 'x');