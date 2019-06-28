clear;
% read
data_source_directory = 'data/external/MFPT/3 - Seven More Outer Race Fault Conditions/';
for i=1:7
    data_file_path = strcat(data_source_directory, 'OuterRaceFault_vload_', num2str(i), '.mat');
    load(data_file_path);
    x(:, i) = bearing.gs;
end
% splice
cache = x;
clear x;
N = 12207;
M = 7 * (146484 / 12207);
x = zeros(N, M);
for i=1:7
    x(:, (7*(i-1)+1):(7*i)) = cache((12207*(i-1)+1):(12207*i), :);
end
% write
data_sink_path = 'data/interim/MFPT/or_faults_vload.mat';
save(data_sink_path, 'x');