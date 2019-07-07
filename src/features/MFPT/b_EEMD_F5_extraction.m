clear;

load('data/interim/MFPT/b_combined.mat');
[N, M] = size(X);
M_ens = 10;
I_imf = 4;
sf = zeros(1, M);
sf(:, 001:120) = 97656;
sf(:, 121:360) = 48828;

% extract EEMD feature #5
for z=[0 0.5 1 1.5 2]
    A = zeros(N, I_imf, M);
    for m=1:M
        [A(:, :, m), ~] = generate_ensemble_IMF(X(:, m), M_ens, I_imf);
    end
    A_sen = A(:, 1, :);
    F_EEMD = zeros(7, M);
    F_EEMD(:, 001:120) = extract_EEMD_feature(A_sen(:, :, 001:120), 97656, z);
    F_EEMD(:, 121:360) = extract_EEMD_feature(A_sen(:, :, 121:360), 48828, z);
    F = real(F_EEMD(1, :));
    data_sink_path = strcat('data/processed/MFPT/b_EEMD_F5_z', num2str(z), '.mat');
    save(data_sink_path, 'F', 'T_number', 'T_onehot');
end