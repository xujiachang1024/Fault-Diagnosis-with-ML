clear;
% read
data_source_directory = 'data/external/MFPT/2 - Three Outer Race Fault Conditions/';
for i=1:3
    data_file_path = strcat(data_source_directory, 'OuterRaceFault_', num2str(i), '.mat');
    load(data_file_path);
    x(:, i) = bearing.gs;
end
% splice
% cache = x;
% clear x;
% N = 146484;
% M = 12;
% x(:, 1:3) = cache(1:146484, :);
% x(:, 4:6) = cache(146485:292968, :);
% x(:, 7:9) = cache(292969:439452, :);
% x(:, 10:12) = cache(439453:585936, :);
% splice continued
% cache = x;
% clear x;
% N = 12207;
% M = M * (146484 / 12207);
% x = zeros(N, M);
% for i=1:12
%     x(:, (12*(i-1)+1):(12*i)) = cache((12207*(i-1)+1):(12207*i), :);
% end
% write
data_sink_path = 'data/interim/MFPT/or_faults.mat';
save(data_sink_path, 'x');