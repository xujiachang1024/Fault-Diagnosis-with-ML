clear;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR007_0.mat');
ba{1} = X105_BA_time;
de{1} = X105_DE_time;
fe{1} = X105_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR007_1.mat');
ba{2} = X106_BA_time;
de{2} = X106_DE_time;
fe{2} = X106_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR007_2.mat');
ba{3} = X107_BA_time;
de{3} = X107_DE_time;
fe{3} = X107_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR007_3.mat');
ba{4} = X108_BA_time;
de{4} = X108_DE_time;
fe{4} = X108_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR014_0.mat');
ba{5} = X169_BA_time;
de{5} = X169_DE_time;
fe{5} = X169_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR014_1.mat');
ba{6} = X170_BA_time;
de{6} = X170_DE_time;
fe{6} = X170_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR014_2.mat');
ba{7} = X171_BA_time;
de{7} = X171_DE_time;
fe{7} = X171_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR014_3.mat');
ba{8} = X172_BA_time;
de{8} = X172_DE_time;
fe{8} = X172_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR021_0.mat');
ba{9} = X209_BA_time;
de{9} = X209_DE_time;
fe{9} = X209_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR021_1.mat');
ba{10} = X210_BA_time;
de{10} = X210_DE_time;
fe{10} = X210_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR021_2.mat');
ba{11} = X211_BA_time;
de{11} = X211_DE_time;
fe{11} = X211_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR021_3.mat');
ba{12} = X212_BA_time;
de{12} = X212_DE_time;
fe{12} = X212_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR028_0.mat');
de{13} = X056_DE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR028_1.mat');
de{14} = X057_DE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR028_2.mat');
de{15} = X058_DE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/IR028_3.mat');
de{16} = X059_DE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/ir_faults_d12.mat';
save(data_sink_path, 'ba', 'de', 'fe');