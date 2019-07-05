a1_normal_cleaning;
a2_or_fault_014_cleaning;
a3_ir_fault_007_cleaning;
a4_ir_fault_014_cleaning;
a5_ir_fault_021_cleaning;
a6_ir_fault_028_cleaning;
a7_b_fault_014_cleaning;

clear;
N = 1024;
M = 100 * 7;
X = zeros(N, M);

load('data/interim/CWRU/a1_normal.mat');
X(:, 001:100) = x;

load('data/interim/CWRU/a2_or_fault_014.mat');
X(:, 101:200) = x;

load('data/interim/CWRU/a3_ir_fault_007.mat');
X(:, 201:300) = x;

load('data/interim/CWRU/a4_ir_fault_014.mat');
X(:, 301:400) = x;

load('data/interim/CWRU/a5_ir_fault_021.mat');
X(:, 401:500) = x;

load('data/interim/CWRU/a6_ir_fault_028.mat');
X(:, 501:600) = x;

load('data/interim/CWRU/a7_b_fault_014.mat');
X(:, 601:700) = x;

Y = zeros(1, M);
Y(:, 001:100) = 1;
Y(:, 101:200) = 2;
Y(:, 201:300) = 3;
Y(:, 301:400) = 4;
Y(:, 401:500) = 5;
Y(:, 501:600) = 6;
Y(:, 601:700) = 1;

data_sink_path = 'data/interim/CWRU/a_combined.mat';
save(data_sink_path, 'X', 'Y');