clear;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@3_0.mat');
ba{1} = X144_BA_time;
de{1} = X144_DE_time;
fe{1} = X144_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@3_1.mat');
ba{2} = X145_BA_time;
de{2} = X145_DE_time;
fe{2} = X145_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@3_2.mat');
ba{3} = X146_BA_time;
de{3} = X146_DE_time;
fe{3} = X146_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@3_3.mat');
ba{4} = X147_BA_time;
de{4} = X147_DE_time;
fe{4} = X147_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@3_0.mat');
ba{5} = X246_BA_time;
de{5} = X246_DE_time;
fe{5} = X246_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@3_1.mat');
ba{6} = X247_BA_time;
de{6} = X247_DE_time;
fe{6} = X247_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@3_2.mat');
ba{7} = X248_BA_time;
de{7} = X248_DE_time;
fe{7} = X248_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@3_3.mat');
ba{8} = X249_BA_time;
de{8} = X249_DE_time;
fe{8} = X249_FE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/or_faults_d12_orthogonal.mat';
save(data_sink_path, 'ba', 'de', 'fe');