clear;
Z = 5;
M = 700;
F_stacked = zeros(Z + 1, M);

% load the CWRU data set, load=2HP, and stack features
load('data/processed/CWRU/c_stats_F19_freq_z0.mat');
F_stacked(1, :) = F;
load('data/processed/CWRU/c_stats_F19_freq_z0.5.mat');
F_stacked(2, :) = F;
load('data/processed/CWRU/c_stats_F19_freq_z1.mat');
F_stacked(3, :) = F;
load('data/processed/CWRU/c_stats_F19_freq_z1.5.mat');
F_stacked(4, :) = F;
load('data/processed/CWRU/c_stats_F19_freq_z2.mat');
F_stacked(5, :) = F;
F_stacked(6, :) = mean(F_stacked, 1);

% set random seed
setdemorandstream(491218382)

% initialise the pattern neural network
net = patternnet([10], 'traingdx', 'crossentropy');

% train the pattern neural network
[net,tr] = train(net, F_stacked, T_onehot);
nntraintool