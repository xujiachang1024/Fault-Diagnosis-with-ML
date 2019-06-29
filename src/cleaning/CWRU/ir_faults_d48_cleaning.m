clear;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR007_0.mat');
de{1} = X109_DE_time;
fe{1} = X109_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR007_1.mat');
de{2} = X110_DE_time;
fe{2} = X110_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR007_2.mat');
de{3} = X111_DE_time;
fe{3} = X111_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR007_3.mat');
de{4} = X112_DE_time;
fe{4} = X112_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR014_0.mat');
de{5} = X173_DE_time;
fe{5} = X173_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR014_1.mat');
de{6} = X175_DE_time;
fe{6} = X175_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR014_2.mat');
de{7} = X176_DE_time;
fe{7} = X176_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR014_3.mat');
de{8} = X177_DE_time;
fe{8} = X177_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR021_0.mat');
de{9} = X213_DE_time;
fe{9} = X213_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR021_1.mat');
de{10} = X214_DE_time;
fe{10} = X214_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR021_2.mat');
de{11} = X215_DE_time;
fe{11} = X215_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/IR021_3.mat');
de{12} = X217_DE_time;
fe{12} = X217_FE_time;
clearvars -except de fe;

data_sink_path = 'data/interim/CWRU/ir_faults_d48.mat';
save(data_sink_path, 'de', 'fe');