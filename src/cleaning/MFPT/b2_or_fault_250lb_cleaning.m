clear;
N = 1024;
M = 120;
x = zeros(N, M);

load('data/external/MFPT/3 - Seven More Outer Race Fault Conditions/OuterRaceFault_vload_6.mat');
for m=1:M
    head = N * (m - 1) + 1;
    tail = N * m;
    x(:, m) = bearing.gs(head:tail, :);
end

data_sink_path = 'data/interim/MFPT/b2_or_fault_250lb.mat';
save(data_sink_path, 'x');