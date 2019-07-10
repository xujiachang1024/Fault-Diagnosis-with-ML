clear;
Z = 5;
M = 700;
F_stacked = zeros((Z + 1) * 3, M * 3);
T_stacked = zeros(7, M * 3);

% load the CWRU data set, load=1HP & load=2HP & load=3HP, and stack EEMD feature #5
load('data/processed/CWRU/a_EEMD_F5_z0.mat');
F_stacked(1, 1:M) = F;
load('data/processed/CWRU/a_EEMD_F5_z0.5.mat');
F_stacked(2, 1:M) = F;
load('data/processed/CWRU/a_EEMD_F5_z1.mat');
F_stacked(3, 1:M) = F;
load('data/processed/CWRU/a_EEMD_F5_z1.5.mat');
F_stacked(4, 1:M) = F;
load('data/processed/CWRU/a_EEMD_F5_z2.mat');
F_stacked(5, 1:M) = F;
load('data/processed/CWRU/c_EEMD_F5_z0.mat');
F_stacked(1, 701:M*2) = F;
load('data/processed/CWRU/c_EEMD_F5_z0.5.mat');
F_stacked(2, 701:M*2) = F;
load('data/processed/CWRU/c_EEMD_F5_z1.mat');
F_stacked(3, 701:M*2) = F;
load('data/processed/CWRU/c_EEMD_F5_z1.5.mat');
F_stacked(4, 701:M*2) = F;
load('data/processed/CWRU/c_EEMD_F5_z2.mat');
F_stacked(5, 701:M*2) = F;
load('data/processed/CWRU/d_EEMD_F5_z0.mat');
F_stacked(1, 1401:M*3) = F;
load('data/processed/CWRU/d_EEMD_F5_z0.5.mat');
F_stacked(2, 1401:M*3) = F;
load('data/processed/CWRU/d_EEMD_F5_z1.mat');
F_stacked(3, 1401:M*3) = F;
load('data/processed/CWRU/d_EEMD_F5_z1.5.mat');
F_stacked(4, 1401:M*3) = F;
load('data/processed/CWRU/d_EEMD_F5_z2.mat');
F_stacked(5, 1401:M*3) = F;
F_stacked(6, :) = mean(F_stacked(1:5, :), 1);

% load the CWRU data set, load=1HP & load=2HP & load=3HP, and stack EEMD feature #6
load('data/processed/CWRU/a_EEMD_F6_z0.mat');
F_stacked(7, 1:M) = F;
load('data/processed/CWRU/a_EEMD_F6_z0.5.mat');
F_stacked(8, 1:M) = F;
load('data/processed/CWRU/a_EEMD_F6_z1.mat');
F_stacked(9, 1:M) = F;
load('data/processed/CWRU/a_EEMD_F6_z1.5.mat');
F_stacked(10, 1:M) = F;
load('data/processed/CWRU/a_EEMD_F6_z2.mat');
F_stacked(11, 1:M) = F;
load('data/processed/CWRU/c_EEMD_F6_z0.mat');
F_stacked(7, 701:M*2) = F;
load('data/processed/CWRU/c_EEMD_F6_z0.5.mat');
F_stacked(8, 701:M*2) = F;
load('data/processed/CWRU/c_EEMD_F6_z1.mat');
F_stacked(9, 701:M*2) = F;
load('data/processed/CWRU/c_EEMD_F6_z1.5.mat');
F_stacked(10, 701:M*2) = F;
load('data/processed/CWRU/c_EEMD_F6_z2.mat');
F_stacked(11, 701:M*2) = F;
load('data/processed/CWRU/d_EEMD_F6_z0.mat');
F_stacked(7, 1401:M*3) = F;
load('data/processed/CWRU/d_EEMD_F6_z0.5.mat');
F_stacked(8, 1401:M*3) = F;
load('data/processed/CWRU/d_EEMD_F6_z1.mat');
F_stacked(9, 1401:M*3) = F;
load('data/processed/CWRU/d_EEMD_F6_z1.5.mat');
F_stacked(10, 1401:M*3) = F;
load('data/processed/CWRU/d_EEMD_F6_z2.mat');
F_stacked(11, 1401:M*3) = F;
F_stacked(12, :) = mean(F_stacked(7:11, :), 1);

% load the CWRU data set, load=1HP & load=2HP & load=3HP, and stack frequency-domain feature #14
load('data/processed/CWRU/a_stats_F14_freq_z0.mat');
F_stacked(13, 1:M) = F;
load('data/processed/CWRU/a_stats_F14_freq_z0.5.mat');
F_stacked(14, 1:M) = F;
load('data/processed/CWRU/a_stats_F14_freq_z1.mat');
F_stacked(15, 1:M) = F;
load('data/processed/CWRU/a_stats_F14_freq_z1.5.mat');
F_stacked(16, 1:M) = F;
load('data/processed/CWRU/a_stats_F14_freq_z2.mat');
F_stacked(17, 1:M) = F;
load('data/processed/CWRU/c_stats_F14_freq_z0.mat');
F_stacked(13, 701:M*2) = F;
load('data/processed/CWRU/c_stats_F14_freq_z0.5.mat');
F_stacked(14, 701:M*2) = F;
load('data/processed/CWRU/c_stats_F14_freq_z1.mat');
F_stacked(15, 701:M*2) = F;
load('data/processed/CWRU/c_stats_F14_freq_z1.5.mat');
F_stacked(16, 701:M*2) = F;
load('data/processed/CWRU/c_stats_F14_freq_z2.mat');
F_stacked(17, 701:M*2) = F;
load('data/processed/CWRU/d_stats_F14_freq_z0.mat');
F_stacked(13, 1401:M*3) = F;
load('data/processed/CWRU/d_stats_F14_freq_z0.5.mat');
F_stacked(14, 1401:M*3) = F;
load('data/processed/CWRU/d_stats_F14_freq_z1.mat');
F_stacked(15, 1401:M*3) = F;
load('data/processed/CWRU/d_stats_F14_freq_z1.5.mat');
F_stacked(16, 1401:M*3) = F;
load('data/processed/CWRU/d_stats_F14_freq_z2.mat');
F_stacked(17, 1401:M*3) = F;
F_stacked(18, :) = mean(F_stacked(13:17, :), 1);

T_stacked(:, 1:M) = T_onehot;
T_stacked(:, 701:M*2) = T_onehot;
T_stacked(:, 1401:M*3) = T_onehot;

F_avg = F_stacked([6 12 18], :);

% set random seed
setdemorandstream(491218382)

% initialise the pattern neural network
net = patternnet([10], 'traingdx', 'crossentropy');

% train the pattern neural network
[net,tr] = train(net, F_avg, T_stacked);
nntraintool