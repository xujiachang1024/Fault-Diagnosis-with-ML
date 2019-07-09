clear;
Z = 5;
M = 360;
F_stacked = zeros(Z + 1, M);

% load the MFPT data set, and stack EEMD feature #1
load('data/processed/MFPT/b_EEMD_F1_z0.mat');
F_stacked(1, :) = F;
load('data/processed/MFPT/b_EEMD_F1_z0.5.mat');
F_stacked(2, :) = F;
load('data/processed/MFPT/b_EEMD_F1_z1.mat');
F_stacked(3, :) = F;
load('data/processed/MFPT/b_EEMD_F1_z1.5.mat');
F_stacked(4, :) = F;
load('data/processed/MFPT/b_EEMD_F1_z2.mat');
F_stacked(5, :) = F;
F_stacked(6, :) = mean(F_stacked(1:5, :), 1);

% set random seed
setdemorandstream(491218382)

% initialise the pattern neural network
net = patternnet([10], 'traingdx', 'crossentropy');

% train the pattern neural network
[net,tr] = train(net, F_stacked, T_onehot);
nntraintool