clear;
Z = 5;
M = 360;
F_stacked = zeros(Z, M);
F_avg = zeros(3, M);

% load the MFPT data set, and average EEMD feature #5
load('data/processed/MFPT/b_EEMD_F5_z0.mat');
F_stacked(1, :) = F;
load('data/processed/MFPT/b_EEMD_F5_z0.5.mat');
F_stacked(2, :) = F;
load('data/processed/MFPT/b_EEMD_F5_z1.mat');
F_stacked(3, :) = F;
load('data/processed/MFPT/b_EEMD_F5_z1.5.mat');
F_stacked(4, :) = F;
load('data/processed/MFPT/b_EEMD_F5_z2.mat');
F_stacked(5, :) = F;
F_avg(1, :) = mean(F_stacked, 1);

% load the MFPT data set, and average EEMD feature #6
load('data/processed/MFPT/b_EEMD_F6_z0.mat');
F_stacked(1, :) = F;
load('data/processed/MFPT/b_EEMD_F6_z0.5.mat');
F_stacked(2, :) = F;
load('data/processed/MFPT/b_EEMD_F6_z1.mat');
F_stacked(3, :) = F;
load('data/processed/MFPT/b_EEMD_F6_z1.5.mat');
F_stacked(4, :) = F;
load('data/processed/MFPT/b_EEMD_F6_z2.mat');
F_stacked(5, :) = F;
F_avg(2, :) = mean(F_stacked, 1);

% load the MFPT data set, and average frequency-domain feature #14
load('data/processed/MFPT/b_stats_F14_freq_z0.mat');
F_stacked(1, :) = F;
load('data/processed/MFPT/b_stats_F14_freq_z0.5.mat');
F_stacked(2, :) = F;
load('data/processed/MFPT/b_stats_F14_freq_z1.mat');
F_stacked(3, :) = F;
load('data/processed/MFPT/b_stats_F14_freq_z1.5.mat');
F_stacked(4, :) = F;
load('data/processed/MFPT/b_stats_F14_freq_z2.mat');
F_stacked(5, :) = F;
F_avg(3, :) = mean(F_stacked, 1);

% set random seed
setdemorandstream(491218382)

% initialise the pattern neural network
net = patternnet([10], 'traingdx', 'crossentropy');

% train the pattern neural network
[net,tr] = train(net, F_avg, T_onehot);
nntraintool