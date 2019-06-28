clear;
ss = [3 3 7 7];
ss = [12 12 7 7];
% ss = [144 144 84 84];
F = 13;
F_freq = zeros(F, sum(ss));

% combine frequency-domain features for baselines
load('data/interim/MFPT/baselines.mat');
[N, M] = size(x);
sf = 97656;
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    K = size(s, 1);
    F_freq(:, m) = combine_freq_features(s, K, f);
end

% combine frequency-domain features for OR faults
load('data/interim/MFPT/or_faults.mat');
[N, M] = size(x);
sf = 97656;
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    K = size(s, 1);
    F_freq(:, ss(1) + m) = combine_freq_features(s, K, f);
end

% combine frequency-domain features for OR faults (variable loads)
load('data/interim/MFPT/or_faults_vload.mat');
[N, M] = size(x);
sf = 48828;
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    K = size(s, 1);
    F_freq(:, sum(ss(1:2)) + m) = combine_freq_features(s, K, f);
end

% combine frequency-domain features for IR faults (variable loads)
load('data/interim/MFPT/ir_faults_vload.mat');
[N, M] = size(x);
sf = 48828;
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    K = size(s, 1);
    F_freq(:, sum(ss(1:3)) + m) = combine_freq_features(s, K, f);
end

figure();hold on
for f=1:F
    subplot(3, 5, f);hold on
    plot(F_freq(f, 1:ss(1)));
    plot(F_freq(f, (ss(1)+1):sum(ss(1:2))));
    plot(F_freq(f, (sum(ss(1:2))+1):sum(ss(1:3))));
    plot(F_freq(f, (sum(ss(1:3))+1):sum(ss)));
    title(strcat('Feature #', num2str(6 + f)));
    xlabel('Sample point')
    ylabel(strcat('F', num2str(6 + f)))
    legend('Baselines', 'OR Faults', 'OR Faults (vload)', 'IR Faults (vload)');
end