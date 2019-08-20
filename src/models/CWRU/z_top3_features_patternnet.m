clear;
Z = 5;
M = 700;
F_stacked = zeros((Z + 1) * 3, M);

% load the CWRU data set, and stack EEMD feature #5
load('data/processed/CWRU/a_EEMD_F5_z0.mat');
F_stacked(1, :) = F;
load('data/processed/CWRU/a_EEMD_F5_z0.5.mat');
F_stacked(2, :) = F;
load('data/processed/CWRU/a_EEMD_F5_z1.mat');
F_stacked(3, :) = F;
load('data/processed/CWRU/a_EEMD_F5_z1.5.mat');
F_stacked(4, :) = F;
load('data/processed/CWRU/a_EEMD_F5_z2.mat');
F_stacked(5, :) = F;
F_stacked(6, :) = mean(F_stacked(1:5, :), 1);

% load the CWRU data set, and stack EEMD feature #6
load('data/processed/CWRU/a_EEMD_F6_z0.mat');
F_stacked(7, :) = F;
load('data/processed/CWRU/a_EEMD_F6_z0.5.mat');
F_stacked(8, :) = F;
load('data/processed/CWRU/a_EEMD_F6_z1.mat');
F_stacked(9, :) = F;
load('data/processed/CWRU/a_EEMD_F6_z1.5.mat');
F_stacked(10, :) = F;
load('data/processed/CWRU/a_EEMD_F6_z2.mat');
F_stacked(11, :) = F;
F_stacked(12, :) = mean(F_stacked(7:11, :), 1);

% load the CWRU data set, and stack frequency-domain feature #14
load('data/processed/CWRU/a_stats_F14_freq_z0.mat');
F_stacked(13, :) = F;
load('data/processed/CWRU/a_stats_F14_freq_z0.5.mat');
F_stacked(14, :) = F;
load('data/processed/CWRU/a_stats_F14_freq_z1.mat');
F_stacked(15, :) = F;
load('data/processed/CWRU/a_stats_F14_freq_z1.5.mat');
F_stacked(16, :) = F;
load('data/processed/CWRU/a_stats_F14_freq_z2.mat');
F_stacked(17, :) = F;
F_stacked(18, :) = mean(F_stacked(13:17, :), 1);

% set random seed
setdemorandstream(491218382)

% initialise the pattern neural network
net = patternnet([10], 'traingdx', 'crossentropy');

% train the pattern neural network
[net,tr] = train(net, F_stacked, T_onehot);
nntraintool

% load the CWRU data set, and stack EEMD feature #5
load('data/processed/CWRU/z_EEMD_F5_z0.mat');
F_stacked(1, :) = F;
load('data/processed/CWRU/z_EEMD_F5_z0.5.mat');
F_stacked(2, :) = F;
load('data/processed/CWRU/z_EEMD_F5_z1.mat');
F_stacked(3, :) = F;
load('data/processed/CWRU/z_EEMD_F5_z1.5.mat');
F_stacked(4, :) = F;
load('data/processed/CWRU/z_EEMD_F5_z2.mat');
F_stacked(5, :) = F;
F_stacked(6, :) = mean(F_stacked(1:5, :), 1);

% load the CWRU data set, and stack EEMD feature #6
load('data/processed/CWRU/z_EEMD_F6_z0.mat');
F_stacked(7, :) = F;
load('data/processed/CWRU/z_EEMD_F6_z0.5.mat');
F_stacked(8, :) = F;
load('data/processed/CWRU/z_EEMD_F6_z1.mat');
F_stacked(9, :) = F;
load('data/processed/CWRU/z_EEMD_F6_z1.5.mat');
F_stacked(10, :) = F;
load('data/processed/CWRU/z_EEMD_F6_z2.mat');
F_stacked(11, :) = F;
F_stacked(12, :) = mean(F_stacked(7:11, :), 1);

% load the CWRU data set, and stack frequency-domain feature #14
load('data/processed/CWRU/z_stats_F14_freq_z0.mat');
F_stacked(13, :) = F;
load('data/processed/CWRU/z_stats_F14_freq_z0.5.mat');
F_stacked(14, :) = F;
load('data/processed/CWRU/z_stats_F14_freq_z1.mat');
F_stacked(15, :) = F;
load('data/processed/CWRU/z_stats_F14_freq_z1.5.mat');
F_stacked(16, :) = F;
load('data/processed/CWRU/z_stats_F14_freq_z2.mat');
F_stacked(17, :) = F;
F_stacked(18, :) = mean(F_stacked(13:17, :), 1);

Y_onehot = net(F_stacked);
[~, Y_number] = max(Y_onehot, [], 1);
figure
robust_confusion_matrix = confusionchart(T_number, Y_number);