clear;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@6_0.mat');
ba{1} = X130_BA_time;
de{1} = X130_DE_time;
fe{1} = X130_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@6_1.mat');
ba{2} = X131_BA_time;
de{2} = X131_DE_time;
fe{2} = X131_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@6_2.mat');
ba{3} = X132_BA_time;
de{3} = X132_DE_time;
fe{3} = X132_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR007@6_3.mat');
ba{4} = X133_BA_time;
de{4} = X133_DE_time;
fe{4} = X133_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR014@6_0.mat');
ba{5} = X197_BA_time;
de{5} = X197_DE_time;
fe{5} = X197_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR014@6_1.mat');
ba{6} = X198_BA_time;
de{6} = X198_DE_time;
fe{6} = X198_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR014@6_2.mat');
ba{7} = X199_BA_time;
de{7} = X199_DE_time;
fe{7} = X199_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR014@6_3.mat');
ba{8} = X200_BA_time;
de{8} = X200_DE_time;
fe{8} = X200_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@6_0.mat');
ba{9} = X234_BA_time;
de{9} = X234_DE_time;
fe{9} = X234_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@6_1.mat');
ba{10} = X235_BA_time;
de{10} = X235_DE_time;
fe{10} = X235_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@6_2.mat');
ba{11} = X236_BA_time;
de{11} = X236_DE_time;
fe{11} = X236_FE_time;
clearvars -except ba de fe;

load('data/external/CWRU/12k_drive_end_bearing_fault/OR021@6_3.mat');
ba{12} = X237_BA_time;
de{12} = X237_DE_time;
fe{12} = X237_FE_time;
clearvars -except ba de fe;

data_sink_path = 'data/interim/CWRU/or_faults_d12_centered.mat';
save(data_sink_path, 'ba', 'de', 'fe');