clear;
M_ens = 10;
I_imf = 4;

% combine EEMD features for normal
load('data/interim/CWRU/a1_normal.mat');
[N, M] = size(x);
A_a1 = zeros(N, I_imf, M);
for m=1:M
    [A_a1(:, :, m), ~] = compute_EEMD_feature(x(:, m), M_ens, I_imf);
end
[A_sensitive_a1, i_sensitive] = select_sensitive_IMF(A_a1, false);