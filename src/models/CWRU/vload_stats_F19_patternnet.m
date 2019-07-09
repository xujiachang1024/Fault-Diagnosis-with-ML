clear;
Z = 5;
M = 700;
F_stacked = zeros(Z + 1, M * 2);
T_stacked = zeros(7, M * 2);

% load the CWRU data set, load=1HP & load=2HP, and stack features
load('data/processed/CWRU/a_stats_F19_freq_z0.mat');
F_stacked(1, 1:M) = F;
load('data/processed/CWRU/a_stats_F19_freq_z0.5.mat');
F_stacked(2, 1:M) = F;
load('data/processed/CWRU/a_stats_F19_freq_z1.mat');
F_stacked(3, 1:M) = F;
load('data/processed/CWRU/a_stats_F19_freq_z1.5.mat');
F_stacked(4, 1:M) = F;
load('data/processed/CWRU/a_stats_F19_freq_z2.mat');
F_stacked(5, 1:M) = F;
load('data/processed/CWRU/c_stats_F19_freq_z0.mat');
F_stacked(1, 701:M*2) = F;
load('data/processed/CWRU/c_stats_F19_freq_z0.5.mat');
F_stacked(2, 701:M*2) = F;
load('data/processed/CWRU/c_stats_F19_freq_z1.mat');
F_stacked(3, 701:M*2) = F;
load('data/processed/CWRU/c_stats_F19_freq_z1.5.mat');
F_stacked(4, 701:M*2) = F;
load('data/processed/CWRU/c_stats_F19_freq_z2.mat');
F_stacked(5, 701:M*2) = F;
F_stacked(6, :) = mean(F_stacked, 1);

T_stacked(:, 1:M) = T_onehot;
T_stacked(:, 701:M*2) = T_onehot;

% set random seed
setdemorandstream(491218382)

% initialise the pattern neural network
net = patternnet([10], 'traingdx', 'crossentropy');

% train the pattern neural network
[net,tr] = train(net, F_stacked, T_stacked);
nntraintool