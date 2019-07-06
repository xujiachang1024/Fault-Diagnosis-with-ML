clear;

load('data/interim/CWRU/a_combined.mat');
[N, M] = size(X);
M_ens = 10;
I_imf = 4;
sf = 12000;

% extract EEMD feature #1
for z=[0 0.5 1 1.5 2]
    A = zeros(N, I_imf, M);
    for m=1:M
        [A(:, :, m), ~] = generate_ensemble_IMF(X(:, m), M_ens, I_imf);
    end
    A_sen = A(:, 1, :);
    F_EEMD = extract_EEMD_feature(A_sen, sf, z);
    F = F_EEMD(1, :);
    data_sink_path = strcat('data/processed/CWRU/a_EEMD_F1_z', num2str(z), '.mat');
    save(data_sink_path, 'F', 'Y');
end