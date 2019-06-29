clear;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@6_0.mat');
de{1} = X135_DE_time;
fe{1} = X135_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@6_1.mat');
de{2} = X136_DE_time;
fe{2} = X136_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@6_2.mat');
de{3} = X137_DE_time;
fe{3} = X137_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR007@6_3.mat');
de{4} = X138_DE_time;
fe{4} = X138_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR014@6_0.mat');
de{5} = X201_DE_time;
fe{5} = X201_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR014@6_1.mat');
de{6} = X202_DE_time;
fe{6} = X202_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR014@6_2.mat');
de{7} = X203_DE_time;
fe{7} = X203_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR014@6_3.mat');
de{8} = X204_DE_time;
fe{8} = X204_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@6_0.mat');
de{9} = X238_DE_time;
fe{9} = X238_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@6_1.mat');
de{10} = X239_DE_time;
fe{10} = X239_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@6_2.mat');
de{11} = X240_DE_time;
fe{11} = X240_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/OR021@6_3.mat');
de{12} = X241_DE_time;
fe{12} = X241_FE_time;
clearvars -except de fe;

data_sink_path = 'data/interim/CWRU/or_faults_d48_centered.mat';
save(data_sink_path, 'de', 'fe');