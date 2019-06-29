clear;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@12_0.mat');
ba{1} = X156_BA_time;
de{1} = X156_DE_time;
fe{1} = X156_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@12_1.mat');
ba{2} = X158_BA_time;
de{2} = X158_DE_time;
fe{2} = X158_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@12_2.mat');
ba{3} = X159_BA_time;
de{3} = X159_DE_time;
fe{3} = X159_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@12_3.mat');
ba{4} = X160_BA_time;
de{4} = X160_DE_time;
fe{4} = X160_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@12_0.mat');
ba{5} = X258_BA_time;
de{5} = X258_DE_time;
fe{5} = X258_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@12_1.mat');
ba{6} = X259_BA_time;
de{6} = X259_DE_time;
fe{6} = X259_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@12_2.mat');
ba{7} = X260_BA_time;
de{7} = X260_DE_time;
fe{7} = X260_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@12_3.mat');
ba{8} = X261_BA_time;
de{8} = X261_DE_time;
fe{8} = X261_FE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/or_faults_d12_opposite.mat';
save(data_sink_path, 'ba', 'de', 'fe');