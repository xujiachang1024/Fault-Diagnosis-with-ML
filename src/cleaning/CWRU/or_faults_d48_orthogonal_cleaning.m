clear;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@3_0.mat');
de{1} = X148_DE_time;
fe{1} = X148_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@3_1.mat');
de{2} = X149_DE_time;
fe{2} = X149_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@3_2.mat');
de{3} = X150_DE_time;
fe{3} = X150_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@3_3.mat');
de{4} = X151_DE_time;
fe{4} = X151_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@3_0.mat');
de{5} = X250_DE_time;
fe{5} = X250_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@3_1.mat');
de{6} = X251_DE_time;
fe{6} = X251_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@3_2.mat');
de{7} = X252_DE_time;
fe{7} = X252_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@3_3.mat');
de{8} = X253_DE_time;
fe{8} = X253_FE_time;
clearvars -except de fe;

data_sink_path = 'data/interim/CWRU/or_faults_d48_orthogonal.mat';
save(data_sink_path, 'de', 'fe');