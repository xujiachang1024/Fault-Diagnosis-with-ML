clear;

load('data/external/CWRU/fan_end_bearing_fault/B007_0.mat');
ba{1} = X282_BA_time;
de{1} = X282_DE_time;
fe{1} = X282_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B007_1.mat');
ba{2} = X283_BA_time;
de{2} = X283_DE_time;
fe{2} = X283_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B007_2.mat');
ba{3} = X284_BA_time;
de{3} = X284_DE_time;
fe{3} = X284_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B007_3.mat');
ba{4} = X285_BA_time;
de{4} = X285_DE_time;
fe{4} = X285_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B014_0.mat');
ba{5} = X286_BA_time;
de{5} = X286_DE_time;
fe{5} = X286_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B014_1.mat');
ba{6} = X287_BA_time;
de{6} = X287_DE_time;
fe{6} = X287_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B014_2.mat');
ba{7} = X288_BA_time;
de{7} = X288_DE_time;
fe{7} = X288_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B014_3.mat');
ba{8} = X289_BA_time;
de{8} = X289_DE_time;
fe{8} = X289_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B021_0.mat');
ba{9} = X290_BA_time;
de{9} = X290_DE_time;
fe{9} = X290_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B021_1.mat');
ba{10} = X291_BA_time;
de{10} = X291_DE_time;
fe{10} = X291_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B021_2.mat');
ba{11} = X292_BA_time;
de{11} = X292_DE_time;
fe{11} = X292_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/B021_3.mat');
ba{12} = X293_BA_time;
de{12} = X293_DE_time;
fe{12} = X293_FE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/b_faults_fan.mat';
save(data_sink_path, 'ba', 'de', 'fe');