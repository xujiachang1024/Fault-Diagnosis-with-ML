clear;

load('data/external/CWRU/12k_drive_end_bearing_fault/B007_0.mat');
ba{1} = X118_BA_time;
de{1} = X118_DE_time;
fe{1} = X118_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B007_1.mat');
ba{2} = X119_BA_time;
de{2} = X119_DE_time;
fe{2} = X119_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B007_2.mat');
ba{3} = X120_BA_time;
de{3} = X120_DE_time;
fe{3} = X120_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B007_3.mat');
ba{4} = X121_BA_time;
de{4} = X121_DE_time;
fe{4} = X121_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B014_0.mat');
ba{5} = X185_BA_time;
de{5} = X185_DE_time;
fe{5} = X185_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B014_1.mat');
ba{6} = X186_BA_time;
de{6} = X186_DE_time;
fe{6} = X186_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B014_2.mat');
ba{7} = X187_BA_time;
de{7} = X187_DE_time;
fe{7} = X187_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B014_3.mat');
ba{8} = X188_BA_time;
de{8} = X188_DE_time;
fe{8} = X188_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B021_0.mat');
ba{9} = X222_BA_time;
de{9} = X222_DE_time;
fe{9} = X222_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B021_1.mat');
ba{10} = X223_BA_time;
de{10} = X223_DE_time;
fe{10} = X223_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B021_2.mat');
ba{11} = X224_BA_time;
de{11} = X224_DE_time;
fe{11} = X224_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B021_3.mat');
ba{12} = X225_BA_time;
de{12} = X225_DE_time;
fe{12} = X225_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B028_0.mat');
de{13} = X048_DE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B028_1.mat');
de{14} = X049_DE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B028_2.mat');
de{15} = X050_DE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/B028_3.mat');
de{16} = X051_DE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/b_faults_d12.mat';
save(data_sink_path, 'ba', 'de', 'fe');