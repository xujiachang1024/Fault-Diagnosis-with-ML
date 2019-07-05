clear;
M_ens = 10;
I_imf = 4;
sf = 12000;
z = 1;

% combine EEMD features for normal
load('data/interim/CWRU/a1_normal.mat');
[N, M] = size(x);
A_a1 = zeros(N, I_imf, M);
for m=1:M
    [A_a1(:, :, m), ~] = generate_ensemble_IMF(x(:, m), M_ens, I_imf);
end
[A_sensitive_a1, i_sensitive] = select_sensitive_IMF(A_a1, false);
F = extract_EEMD_feature(A_sensitive_a1, sf, z);