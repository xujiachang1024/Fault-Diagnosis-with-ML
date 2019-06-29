clear;

load('data/external/CWRU/fan_end_bearing_fault/OR007@12_0.mat');
ba{1} = X302_BA_time;
de{1} = X302_DE_time;
fe{1} = X302_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/OR007@12_1.mat');
ba{2} = X305_BA_time;
de{2} = X305_DE_time;
fe{2} = X305_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/OR007@12_2.mat');
ba{3} = X306_BA_time;
de{3} = X306_DE_time;
fe{3} = X306_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/OR007@12_3.mat');
ba{4} = X307_BA_time;
de{4} = X307_DE_time;
fe{4} = X307_FE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/or_faults_fan_opposite.mat';
save(data_sink_path, 'ba', 'de', 'fe');