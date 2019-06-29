clear;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@12_0.mat');
de{1} = X161_DE_time;
fe{1} = X161_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@12_1.mat');
de{2} = X162_DE_time;
fe{2} = X162_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@12_2.mat');
de{3} = X163_DE_time;
fe{3} = X163_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@12_3.mat');
de{4} = X164_DE_time;
fe{4} = X164_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@12_0.mat');
de{5} = X262_DE_time;
fe{5} = X262_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@12_1.mat');
de{6} = X263_DE_time;
fe{6} = X263_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@12_2.mat');
de{7} = X264_DE_time;
fe{7} = X264_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@12_3.mat');
de{8} = X265_DE_time;
fe{8} = X265_FE_time;
clearvars -except de fe;

data_sink_path = 'data/interim/CWRU/or_faults_d48_opposite.mat';
save(data_sink_path, 'de', 'fe');