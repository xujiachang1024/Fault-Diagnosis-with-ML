clear;

load('data/external/CWRU/fan_end_bearing_fault/OR007@3_0.mat');
ba{1} = X298_BA_time;
de{1} = X298_DE_time;
fe{1} = X298_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/OR007@3_1.mat');
ba{2} = X299_BA_time;
de{2} = X299_DE_time;
fe{2} = X299_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/OR007@3_2.mat');
ba{3} = X300_BA_time;
de{3} = X300_DE_time;
fe{3} = X300_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/OR007@3_3.mat');
ba{4} = X301_BA_time;
de{4} = X301_DE_time;
fe{4} = X301_FE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/or_faults_fan_orthogonal.mat';
save(data_sink_path, 'ba', 'de', 'fe');