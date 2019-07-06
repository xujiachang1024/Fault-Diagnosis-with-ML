clear;

load('data/interim/CWRU/a_combined.mat');
[N, M] = size(X);
sf = 12000;

% extract frequency-domain feature #14
for z=[0 0.5 1 1.5 2]
    F = zeros(1, M);
    for m=1:M
        [f, s] = compute_spectrum(X(:, m), N, sf, z);
        [K, ~] = size(s);
        F(:, m) = real(f14(s, K, f));
    end
    data_sink_path = strcat('data/processed/CWRU/a_stats_F14_freq_z', num2str(z), '.mat');
    save(data_sink_path, 'F', 'T_number', 'T_onehot');
end 