clear;

load('data/external/CWRU/48k_drive_end_bearing_fault/B007_0.mat');
de{1} = X122_DE_time;
fe{1} = X122_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B007_1.mat');
de{2} = X123_DE_time;
fe{2} = X123_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B007_2.mat');
de{3} = X124_DE_time;
fe{3} = X124_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B007_3.mat');
de{4} = X125_DE_time;
fe{4} = X125_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B014_0.mat');
de{5} = X189_DE_time;
fe{5} = X189_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B014_1.mat');
de{6} = X190_DE_time;
fe{6} = X190_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B014_2.mat');
de{7} = X191_DE_time;
fe{7} = X191_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B014_3.mat');
de{8} = X192_DE_time;
fe{8} = X192_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B021_0.mat');
de{9} = X226_DE_time;
fe{9} = X226_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B021_1.mat');
de{10} = X227_DE_time;
fe{10} = X227_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B021_2.mat');
de{11} = X228_DE_time;
fe{11} = X228_FE_time;
clearvars -except de fe;

load('data/external/CWRU/48k_drive_end_bearing_fault/B021_3.mat');
de{12} = X229_DE_time;
fe{12} = X229_FE_time;
clearvars -except de fe;

data_sink_path = 'data/interim/CWRU/b_faults_d48.mat';
save(data_sink_path, 'de', 'fe');