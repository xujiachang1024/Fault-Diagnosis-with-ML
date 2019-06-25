clear;
data_source_directory = 'data/external/MFPT/4 - Seven Inner Race Fault Conditions/';
for i=1:7
    data_file_path = strcat(data_source_directory, 'InnerRaceFault_vload_', num2str(i), '.mat');
    load(data_file_path);
    x(:, i) = bearing.gs;
end
data_sink_path = 'data/interim/MFPT/ir_faults_vload.mat';
save(data_sink_path, 'x');