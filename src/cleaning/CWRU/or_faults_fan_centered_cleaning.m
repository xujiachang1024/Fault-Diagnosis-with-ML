clear;

load('data/external/CWRU/fan_end_bearing_fault/OR007@6_0.mat');
ba{1} = X294_BA_time;
de{1} = X294_DE_time;
fe{1} = X294_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/OR007@6_1.mat');
ba{2} = X295_BA_time;
de{2} = X295_DE_time;
fe{2} = X295_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/OR007@6_2.mat');
ba{3} = X296_BA_time;
de{3} = X296_DE_time;
fe{3} = X296_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/OR007@6_3.mat');
ba{4} = X297_BA_time;
de{4} = X297_DE_time;
fe{4} = X297_FE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/or_faults_fan_centered.mat';
save(data_sink_path, 'ba', 'de', 'fe');