b1_normal_cleaning;
b2_or_fault_250lb_cleaning;
b3_ir_fault_250lb_cleaning;

clear;
N = 1024;
M = 120 * 3;
X = zeros(N, M);

load('data/interim/MFPT/b1_normal.mat');
X(:, 001:120) = x;
load('data/interim/MFPT/b2_or_fault_250lb.mat');
X(:, 121:240) = x;
load('data/interim/MFPT/b3_ir_fault_250lb.mat');
X(:, 241:360) = x;

% generate numerical representation of target value
T_number = zeros(1, M);
T_number(:, 001:120) = 1;
T_number(:, 121:240) = 2;
T_number(:, 241:360) = 3;

% generate one-hot encoding of target value
T_onehot = zeros(3, M);
for m = 1:M
    t = T_number(:, m);
    T_onehot(t, m) = 1;
end

data_sink_path = 'data/interim/CWRU/b_combined.mat';
save(data_sink_path, 'X', 'T_number', 'T_onehot');