N = 1024;
M = 100;
Z = 0.5;

load('data/interim/CWRU/a_combined.mat');

% set random seed
setdemorandstream(491218382);

% add white noise to class 1
std1 = std(X(:, 001:100), 1, 'all');
X(:, 001:100) = X(:, 001:100) + ((rand(N, M) - 0.5) .* Z .* std1);

% add white noise to class 2
std2 = std(X(:, 101:200), 1, 'all');
X(:, 101:200) = X(:, 101:200) + ((rand(N, M) - 0.5) .* Z .* std2);

% add white noise to class 3
std3 = std(X(:, 201:300), 1, 'all');
X(:, 201:300) = X(:, 201:300) + ((rand(N, M) - 0.5) .* Z .* std3);

% add white noise to class 4
std4 = std(X(:, 301:400), 1, 'all');
X(:, 301:400) = X(:, 301:400) + ((rand(N, M) - 0.5) .* Z .* std4);

% add white noise to class 5
std5 = std(X(:, 401:500), 1, 'all');
X(:, 401:500) = X(:, 401:500) + ((rand(N, M) - 0.5) .* Z .* std5);

% add white noise to class 6
std6 = std(X(:, 501:600), 1, 'all');
X(:, 501:600) = X(:, 501:600) + ((rand(N, M) - 0.5) .* Z .* std6);

% add white noise to class 7
std7 = std(X(:, 601:700), 1, 'all');
X(:, 601:700) = X(:, 601:700) + ((rand(N, M) - 0.5) .* Z .* std7);

data_sink_path = 'data/interim/CWRU/z_combined.mat';
save(data_sink_path, 'X', 'T_number', 'T_onehot');