d1_normal_cleaning;
d2_or_fault_014_cleaning;
d3_ir_fault_007_cleaning;
d4_ir_fault_014_cleaning;
d5_ir_fault_021_cleaning;
d6_ir_fault_028_cleaning;
d7_b_fault_014_cleaning;

clear;
N = 1024;
M = 100 * 7;
X = zeros(N, M);

load('data/interim/CWRU/d1_normal.mat');
X(:, 001:100) = x;

load('data/interim/CWRU/d2_or_fault_014.mat');
X(:, 101:200) = x;

load('data/interim/CWRU/d3_ir_fault_007.mat');
X(:, 201:300) = x;

load('data/interim/CWRU/d4_ir_fault_014.mat');
X(:, 301:400) = x;

load('data/interim/CWRU/d5_ir_fault_021.mat');
X(:, 401:500) = x;

load('data/interim/CWRU/d6_ir_fault_028.mat');
X(:, 501:600) = x;

load('data/interim/CWRU/d7_b_fault_014.mat');
X(:, 601:700) = x;

% generate numerical representation of target value
T_number = zeros(1, M);
T_number(:, 001:100) = 1;
T_number(:, 101:200) = 2;
T_number(:, 201:300) = 3;
T_number(:, 301:400) = 4;
T_number(:, 401:500) = 5;
T_number(:, 501:600) = 6;
T_number(:, 601:700) = 7;

% generate one-hot encoding of target value
T_onehot = zeros(7, M);
for m=1:M
    t = T_number(:, m);
    T_onehot(t, m) = 1;
end

data_sink_path = 'data/interim/CWRU/d_combined.mat';
save(data_sink_path, 'X', 'T_number', 'T_onehot');