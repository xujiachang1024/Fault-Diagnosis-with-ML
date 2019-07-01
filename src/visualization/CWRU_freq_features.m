clear;
F = 13;
fs = 12000;

% combine freq-domain features for normal
load('data/interim/CWRU/a1_normal.mat');
[N, M] = size(x);
F_freq_a1 = zeros(F, M);
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    [K, ~] = size(s);
    F_freq_a1(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 014 outer race fault
load('data/interim/CWRU/a2_or_fault_014.mat');
[N, M] = size(x);
F_freq_a2 = zeros(F, M);
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    [K, ~] = size(s);
    F_freq_a2(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 007 inner race fault
load('data/interim/CWRU/a3_ir_fault_007.mat');
[N, M] = size(x);
F_freq_a3 = zeros(F, M);
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    [K, ~] = size(s);
    F_freq_a3(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 014 inner race fault
load('data/interim/CWRU/a4_ir_fault_014.mat');
[N, M] = size(x);
F_freq_a4 = zeros(F, M);
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    [K, ~] = size(s);
    F_freq_a4(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 021 inner race fault
load('data/interim/CWRU/a5_ir_fault_021.mat');
[N, M] = size(x);
F_freq_a5 = zeros(F, M);clear;
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
    F_freq_baseline(:, m) = combine_freq_features(s, K, f);clear;
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


end


for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    [K, ~] = size(s);
    F_freq_a5(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 028 inner race fault
load('data/interim/CWRU/a6_ir_fault_028.mat');
[N, M] = size(x);
F_freq_a6 = zeros(F, M);
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    [K, ~] = size(s);
    F_freq_a6(:, m) = combine_freq_features(s, K, f);
end

% combine freq-domain features for 014 ball fault
load('data/interim/CWRU/a7_b_fault_014.mat');
[N, M] = size(x);
F_freq_a7 = zeros(F, M);
for m=1:M
    [f, s] = compute_spectrum(x(:, m), N, sf);
    [K, ~] = size(s);
    F_freq_a7(:, m) = combine_freq_features(s, K, f);
end

figure();hold on
for f=1:F
    subplot(3, 2, f);hold on
    plot(F_freq_a1(f, :), 'Marker' , 'o');
    plot(F_freq_a2(f, :), 'Marker' , '+');
    plot(F_freq_a3(f, :), 'Marker' , '*');
    plot(F_freq_a4(f, :), 'Marker' , 's');
    plot(F_freq_a5(f, :), 'Marker' , '^');
    plot(F_freq_a6(f, :), 'Marker' , 'p');
    plot(F_freq_a7(f, :), 'Marker' , 'h');
    title(strcat('Feature #', num2str(f)));
    xlabel('Sample point');
    ylabel(strcat('F', num2str(f)));
    legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014');
end