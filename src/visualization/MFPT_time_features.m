clear;
ss = [3 3 7 7];
% ss = [12 12 7 7];
% ss = [144 144 84 84];
F = 6;
F_time = zeros(F, sum(ss));

% combine time-domain features for baselines
load('data/interim/MFPT/baselines.mat');
[N, M] = size(x);
for m=1:M
    F_time(:, m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for OR faults
load('data/interim/MFPT/or_faults.mat');
[N, M] = size(x);
for m=1:M
    F_time(:, ss(1) + m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for OR faults (variable loads)
load('data/interim/MFPT/or_faults_vload.mat');
[N, M] = size(x);
for m=1:M
    F_time(:, sum(ss(1:2)) + m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for IR faults (variable loads)
load('data/interim/MFPT/ir_faults_vload.mat');
[N, M] = size(x);
for m=1:M
    F_time(:, sum(ss(1:3)) + m) = combine_time_features(x(:, m), N);
end

figure();hold on
for f=1:F
    subplot(3, 2, f);hold on
    plot(F_time(f, 1:ss(1)));
    plot(F_time(f, (ss(1)+1):sum(ss(1:3))));
    plot(F_time(f, (sum(ss(1:3))+1):sum(ss)));
    title(strcat('Feature #', num2str(f)));
    xlabel('Sample point')
    ylabel(strcat('F', num2str(f)))
    legend('Baselines', 'OR Faults', 'IR Faults');
end
