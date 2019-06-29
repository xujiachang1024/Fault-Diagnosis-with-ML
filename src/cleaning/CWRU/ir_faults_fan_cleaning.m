clear;

load('data/external/CWRU/fan_end_bearing_fault/IR007_0.mat');
ba{1} = X278_BA_time;
de{1} = X278_DE_time;
fe{1} = X278_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR007_1.mat');
ba{2} = X279_BA_time;
de{2} = X279_DE_time;
fe{2} = X279_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR007_2.mat');
ba{3} = X280_BA_time;
de{3} = X280_DE_time;
fe{3} = X280_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR007_3.mat');
ba{4} = X281_BA_time;
de{4} = X281_DE_time;
fe{4} = X281_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR014_0.mat');
ba{5} = X274_BA_time;
de{5} = X274_DE_time;
fe{5} = X274_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR014_1.mat');
ba{6} = X275_BA_time;
de{6} = X275_DE_time;
fe{6} = X275_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR014_2.mat');
ba{7} = X276_BA_time;
de{7} = X276_DE_time;
fe{7} = X276_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR014_3.mat');
ba{8} = X277_BA_time;
de{8} = X277_DE_time;
fe{8} = X277_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR021_0.mat');
ba{9} = X270_BA_time;
de{9} = X270_DE_time;
fe{9} = X270_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR021_1.mat');
ba{10} = X271_BA_time;
de{10} = X271_DE_time;
fe{10} = X271_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR021_2.mat');
ba{11} = X272_BA_time;
de{11} = X272_DE_time;
fe{11} = X272_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/fan_end_bearing_fault/IR021_3.mat');
ba{12} = X273_BA_time;
de{12} = X273_DE_time;
fe{12} = X273_FE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/ir_faults_fan.mat';
save(data_sink_path, 'ba', 'de', 'fe');