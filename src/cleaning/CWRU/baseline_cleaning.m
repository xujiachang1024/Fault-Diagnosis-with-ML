clear;

load('data/external/CWRU/normal_baseline/normal_0.mat');
de{1} = X097_DE_time;
fe{1} = X097_FE_time;
clearvars -except de fe;

load('data/external/CWRU/normal_baseline/normal_1.mat');
de{2} = X098_DE_time;
fe{2} = X098_FE_time;
clearvars -except de fe;

load('data/external/CWRU/normal_baseline/normal_2.mat');
de{3} = X099_DE_time;
fe{3} = X099_FE_time;
clearvars -except de fe;

load('data/external/CWRU/normal_baseline/normal_3.mat');
de{4} = X100_DE_time;
fe{4} = X100_FE_time;
clearvars -except de fe;

data_sink_path = 'data/interim/CWRU/baselines.mat';
save(data_sink_path, 'de', 'fe');