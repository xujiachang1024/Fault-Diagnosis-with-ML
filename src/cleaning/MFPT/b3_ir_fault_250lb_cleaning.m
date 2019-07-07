clear;
N = 1024;
M = 120;
x = zeros(N, M);

load('data/external/MFPT/4 - Seven Inner Race Fault Conditions/InnerRaceFault_vload_6.mat');
for m=1:M
    head = N * (m - 1) + 1;
    tail = N * m;
    x(:, m) = bearing.gs(head:tail, :);
end

data_sink_path = 'data/interim/MFPT/b3_ir_fault_250lb.mat';
save(data_sink_path, 'x');