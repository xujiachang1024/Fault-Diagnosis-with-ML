clear;
ss = [3 3 7 7];
% ss = [12 12 7 7];
% ss = [144 144 84 84];
L = 20;
SV = zeros(L, sum(ss));

% combine SSA features for baselines
load('data/interim/MFPT/baselines.mat');
[~, M] = size(x);
for m=1:M
    X = embedding(x(:, m), L);
    [eigenvalue, eigenvector, SV(:, m)] = singular_value_decomposition(X);
end

% combine SSA feature for OR faults
load('data/interim/MFPT/or_faults.mat');
[~, M] = size(x);
for m=1:M
    X = embedding(x(:, m), L);
    [eigenvalue, eigenvector, SV(:, ss(1) + m)] = singular_value_decomposition(X);
end

% combine time-domain features for OR faults (variable loads)
load('data/interim/MFPT/or_faults_vload.mat');
[~, M] = size(x);
for m=1:M
    X = embedding(x(:, m), L);
    [eigenvalue, eigenvector, SV(:, sum(ss(1:2)) + m)] = singular_value_decomposition(X);
end

% combine EMD features for IR faults (variable loads)
load('data/interim/MFPT/ir_faults_vload.mat');
[~, M] = size(x);
for m=1:M
    X = embedding(x(:, m), L);
    [eigenvalue, eigenvector, SV(:, sum(ss(1:3)) + m)] = singular_value_decomposition(X);
end

figure();hold on
for i=1:ss(1)
    plot(SV(:, i), 'Marker', 'o', 'MarkerEdgeColor', [0 0.4470 0.7410])
end
for i=(ss(1) + 1):sum(ss(1:2))
    plot(SV(:, i), 'Marker', 'x', 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
end
for i=(ss(2) + 1):sum(ss(1:3))
    plot(SV(:, i), 'Marker', 's', 'MarkerEdgeColor', [0.9290 0.6940 0.1250])
end
for i=(ss(3) + 1):sum(ss)
    plot(SV(:, i), 'Marker', '^', 'MarkerEdgeColor', [0.4660 0.6740 0.1880])
end
