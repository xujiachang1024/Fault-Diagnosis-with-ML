clear;
F = 13;

% combine freq-domain features for baselines
load('data/interim/CWRU/baselines.mat');
M = size(de, 2);
F_freq_baseline = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 12000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_baseline(:, m) = combine_freq_features(s, K, f);
end
% 
% % combine freq-domain features for ball faults
% load('data/interim/CWRU/b_faults_combined.mat')
% M = size(dec, 2);
% F_freq_b_faults = zeros(F, M);
% for m=1:M
%     x = dec{m};
%     N = size(x, 1);
%     [f, s] = compute_spectrum(x, N, sf);
%     K = size(s, 1);
%     F_freq_b_faults(:, m) = combine_freq_features(s, K, f);
% end
% 
% % combine freq-domain features for inner race faults
% load('data/interim/CWRU/ir_faults_combined.mat')
% M = size(dec, 2);
% F_freq_ir_faults = zeros(F, M);
% for m=1:M
%     x = dec{m};
%     N = size(x, 1);
%     [f, s] = compute_spectrum(x, N, sf);
%     K = size(s, 1);
%     F_freq_ir_faults(:, m) = combine_freq_features(s, K, f);
% end
% 
% 
% % combine freq-domain features for outer race faults
% load('data/interim/CWRU/or_faults_combined.mat')
% M = size(dec, 2);
% F_freq_or_faults = zeros(F, M);
% for m=1:M
%     x = dec{m};
%     N = size(x, 1);
%     [f, s] = compute_spectrum(x, N, sf);
%     K = size(s, 1);
%     F_freq_or_faults(:, m) = combine_freq_features(s, K, f);
% end
% 
% clearvars -except F F_freq_baseline F_freq_b_faults F_freq_ir_faults F_freq_or_faults;
% 
% figure();hold on
% for f=1:F
%     subplot(3, 2, f);hold on
%     plot(F_freq_baseline(f, :), 'Marker' , '.');
%     plot(F_freq_b_faults(f, :), 'Marker' , 'o');
%     plot(F_freq_ir_faults(f, :), 'Marker' , '+');
%     plot(F_freq_or_faults(f, :), 'Marker' , '*');
%     title(strcat('Feature #', num2str(f)));
%     xlabel('Sample point');
%     ylabel(strcat('F', num2str(f)));
%     legend('Baselines', 'Ball Faults', 'IR Faults', 'OR Faults');
% end

% combine freq-domain features for 12k drive-end ball faults
load('data/interim/CWRU/b_faults_d12.mat')
M = size(de, 2);
F_freq_b_faults_d12 = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_b_faults_d12(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 48k drive-end ball faults
load('data/interim/CWRU/b_faults_d48.mat')
M = size(de, 2);
F_freq_b_faults_d48 = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_b_faults_d48(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for fan-end ball faults
load('data/interim/CWRU/b_faults_fan.mat')
M = size(de, 2);
F_freq_b_faults_fan = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 12000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_b_faults_fan(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 12k drive-end inner race faults
load('data/interim/CWRU/ir_faults_d12.mat')
M = size(de, 2);
F_freq_ir_faults_d12 = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_ir_faults_d12(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 48k drive-end inner race faults
load('data/interim/CWRU/ir_faults_d48.mat')
M = size(de, 2);
F_freq_ir_faults_d48 = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_ir_faults_d48(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for fan-end inner race faults
load('data/interim/CWRU/ir_faults_fan.mat')
M = size(de, 2);
F_freq_ir_faults_fan = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 12000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_ir_faults_fan(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 12k drive-end outer race faults (centered)
load('data/interim/CWRU/or_faults_d12_centered.mat')
M = size(de, 2);
F_freq_or_faults_d12_centered = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_or_faults_d12_centered(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 48k drive-end outer race faults (centered)
load('data/interim/CWRU/or_faults_d48_centered.mat')
M = size(de, 2);
F_freq_or_faults_d48_centered = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_or_faults_d48_centered(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for fan-end outer race faults (centered)
load('data/interim/CWRU/or_faults_fan_centered.mat')
M = size(de, 2);
F_freq_or_faults_fan_centered = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 12000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_or_faults_fan_centered(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 12k drive-end outer race faults (opposite)
load('data/interim/CWRU/or_faults_d12_opposite.mat')
M = size(de, 2);
F_freq_or_faults_d12_opposite = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_or_faults_d12_opposite(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 48k drive-end outer race faults (opposite)
load('data/interim/CWRU/or_faults_d48_opposite.mat')
M = size(de, 2);
F_freq_or_faults_d48_opposite = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_or_faults_d48_opposite(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for fan-end outer race faults (opposite)
load('data/interim/CWRU/or_faults_fan_opposite.mat')
M = size(de, 2);
F_freq_or_faults_fan_opposite = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 12000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_or_faults_fan_opposite(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 12k drive-end outer race faults (orthogonal)
load('data/interim/CWRU/or_faults_d12_orthogonal.mat')
M = size(de, 2);
F_freq_or_faults_d12_orthogonal = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_or_faults_d12_orthogonal(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 48k drive-end outer race faults (orthogonal)
load('data/interim/CWRU/or_faults_d48_orthogonal.mat')
M = size(de, 2);
F_freq_or_faults_d48_orthogonal = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 48000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_or_faults_d48_orthogonal(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for fan-end outer race faults (orthogonal)
load('data/interim/CWRU/or_faults_fan_orthogonal.mat')
M = size(de, 2);
F_freq_or_faults_fan_orthogonal = zeros(F, M);
for m=1:M
    x = de{m};
    N = size(x, 1);
    fs = 12000;
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    F_freq_or_faults_fan_orthogonal(:, m) = combine_freq_features(s, K, f);
end

figure();hold on
for f=1:F
    subplot(3, 2, f);hold on
    plot(F_freq_baseline(f, :), 'Marker' , '.');
    plot(F_freq_b_faults_d12(f, :), 'Marker' , 'o');
    plot(F_freq_b_faults_d48(f, :), 'Marker' , 'o');
    plot(F_freq_b_faults_fan(f, :), 'Marker' , 'o');
    plot(F_freq_ir_faults_d12(f, :), 'Marker' , '+');
    plot(F_freq_ir_faults_d48(f, :), 'Marker' , '+');
    plot(F_freq_ir_faults_fan(f, :), 'Marker' , '+');
    plot(F_freq_or_faults_d12_centered(f, :), 'Marker' , '*');
    plot(F_freq_or_faults_d48_centered(f, :), 'Marker' , '*');
    plot(F_freq_or_faults_fan_centered(f, :), 'Marker' , '*');
    plot(F_freq_or_faults_d12_opposite(f, :), 'Marker' , 's');
    plot(F_freq_or_faults_d48_opposite(f, :), 'Marker' , 's');
    plot(F_freq_or_faults_fan_opposite(f, :), 'Marker' , 's');
    plot(F_freq_or_faults_d12_orthogonal(f, :), 'Marker' , '^');
    plot(F_freq_or_faults_d48_orthogonal(f, :), 'Marker' , '^');
    plot(F_freq_or_faults_fan_orthogonal(f, :), 'Marker' , '^');
    title(strcat('Feature #', num2str(f)));
    xlabel('Sample point');
    ylabel(strcat('F', num2str(f)));
    legend('Baselines', 'Ball Faults (d12)', 'Ball Faults (d48)', 'Ball Faults (fan)', 'IR Faults (d12)', 'IR Faults (d48)', 'IR Faults (fan)', 'OR Faults (d12 centered)', 'OR Faults (d48 centered)', 'OR Faults (fan centered)', 'OR Faults (d12 opposite)', 'OR Faults (d48 opposite)', 'OR Faults (fan opposite)');
end