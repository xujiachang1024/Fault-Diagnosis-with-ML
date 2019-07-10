clear;

load('data/interim/CWRU/d_combined.mat');
[N, M] = size(X);
M_ens = 10;
I_imf = 4;
sf = 12000;

% extract frequency-domain feature #14 #19
for z=[0 0.5 1 1.5 2]
    F14 = zeros(1, M);
    F19 = zeros(1, M);
    for m=1:M
        [f, s] = compute_spectrum(X(:, m), N, sf, z);
        [K, ~] = size(s);
        F11 = f11(s, K, f);
        F12 = f12(s, K, f, F11);
        F14(:, m) = real(f14(s, K, f));
        F19(:, m) = real(f19(s, K, f, F11, F12));
    end
    F = F14;
    data_sink_path = strcat('data/processed/CWRU/d_stats_F14_freq_z', num2str(z), '.mat');
    save(data_sink_path, 'F', 'T_number', 'T_onehot');
    F = F19;
    data_sink_path = strcat('data/processed/CWRU/d_stats_F19_freq_z', num2str(z), '.mat');
    save(data_sink_path, 'F', 'T_number', 'T_onehot');
end