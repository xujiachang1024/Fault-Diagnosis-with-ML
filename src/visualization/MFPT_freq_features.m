clear;
F = 13;
F_freq = zeros(F, 12 + 12 + 7 + 7);

% combine frequency-domain features for baselines
load('data/interim/MFPT/baselines.mat');
[N, M] = size(x);
sf = 97656;
[f, s] = compute_spectrum(x, N, sf);
K = size(s, 1);
for m=1:M
    F_freq(:, m) = combine_freq_features(s, K, f);
end

% combine frequency-domain features for OR faults
load('data/interim/MFPT/or_faults.mat');
[N, M] = size(x);
sf = 97656;
[f, s] = compute_spectrum(x, N, sf);
K = size(s, 1);
for m=1:M
    F_freq(:, 12 + m) = combine_freq_features(s, K, f);
end

% combine frequency-domain features for OR faults (variable loads)
load('data/interim/MFPT/or_faults_vload.mat');
[N, M] = size(x);
sf = 48828;
[f, s] = compute_spectrum(x, N, sf);
K = size(s, 1);
for m=1:M
    F_freq(:, 12 + 12 + m) = combine_freq_features(s, K, f);
end

% combine frequency-domain features for IR faults (variable loads)
load('data/interim/MFPT/ir_faults_vload.mat');
[N, M] = size(x);
sf = 48828;
[f, s] = compute_spectrum(x, N, sf);
K = size(s, 1);
for m=1:M
    F_freq(:, 12 + 12 + 7 + m) = combine_freq_features(s, K, f);
end

figure();hold on
for f=1:F
    subplot(3, 5, f);hold on
    plot(F_freq(f, 1:12));
    plot(F_freq(f, 13:24));
    plot(F_freq(f, 25:31));
    plot(F_freq(f, 32:38));
    title(strcat('Feature #', num2str(6 + f)));
    xlabel('Sample point')
    ylabel(strcat('F', num2str(6 + f)))
    legend('Baselines', 'OR Faults', 'OR Faults (vload)', 'IR Faults (vload)');
end