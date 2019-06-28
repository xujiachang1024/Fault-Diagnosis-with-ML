clear;
F = 6;
F_time = zeros(F, 12 + 12 + 7 + 7);

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
    F_time(:, 12 + m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for OR faults (variable loads)
load('data/interim/MFPT/or_faults_vload.mat');
[N, M] = size(x);
for m=1:M
    F_time(:, 12 + 12 + m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for IR faults (variable loads)
load('data/interim/MFPT/ir_faults_vload.mat');
[N, M] = size(x);
for m=1:M
    F_time(:, 12 + 12 + 7 + m) = combine_time_features(x(:, m), N);
end

figure();hold on
for f=1:F
    subplot(3, 2, f);hold on
    plot(F_time(f, 1:12));
    plot(F_time(f, 13:24));
    plot(F_time(f, 25:31));
    plot(F_time(f, 32:38));
    title(strcat('Feature #', num2str(f)));
    xlabel('Sample point')
    ylabel(strcat('F', num2str(f)))
    legend('Baselines', 'OR Faults', 'OR Faults (vload)', 'IR Faults (vload)');
end
