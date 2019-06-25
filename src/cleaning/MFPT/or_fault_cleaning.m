clear;
data_source_directory = 'data/external/MFPT/2 - Three Outer Race Fault Conditions/';
for i=1:3
    data_file_path = strcat(data_source_directory, 'OuterRaceFault_', num2str(i), '.mat');
    load(data_file_path);
    x(:, i) = bearing.gs;
end
data_sink_path = 'data/interim/MFPT/or_faults.mat';
save(data_sink_path, 'x');