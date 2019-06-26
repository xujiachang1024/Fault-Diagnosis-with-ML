clear;
load('/home/k1898015/Fault-Diagnosis-with-ML/data/external/MFPT/1 - Three Baseline Conditions/baseline_1.mat');
x = bearing.gs;
[N, ncol] = size(x);
fs = 97656;
plot = true;
F = features_19(x, N, sf, plot);