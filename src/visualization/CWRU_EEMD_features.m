clear;
m_EEMD = 7;
M_ens = 10;
I_imf = 4;
sf = 12000;
z = 0;

% combine EEMD features for normal
load('data/interim/CWRU/a1_normal.mat');
[N, M] = size(x);
A_a1 = zeros(N, I_imf, M);
for m=1:M
    [A_a1(:, :, m), ~] = generate_ensemble_IMF(x(:, m), M_ens, I_imf);
end
A_sen_a1 = A_a1(:, 1, :);
F_EEMD_a1 = extract_EEMD_feature(A_sen_a1, sf, z);

% combine EEMD features for 014 outer race fault
load('data/interim/CWRU/a2_or_fault_014.mat');
[N, M] = size(x);
A_a2 = zeros(N, I_imf, M);
for m=1:M
    [A_a2(:, :, m), ~] = generate_ensemble_IMF(x(:, m), M_ens, I_imf);
end
A_sen_a2 = A_a2(:, 1, :);
F_EEMD_a2 = extract_EEMD_feature(A_sen_a2, sf, z);

% combine EEMD features for 007 inner race fault
load('data/interim/CWRU/a3_ir_fault_007.mat');
[N, M] = size(x);
A_a3 = zeros(N, I_imf, M);
for m=1:M
    [A_a3(:, :, m), ~] = generate_ensemble_IMF(x(:, m), M_ens, I_imf);
end
A_sen_a3 = A_a3(:, 1, :);
F_EEMD_a3 = extract_EEMD_feature(A_sen_a3, sf, z);

% combine EEMD features for 014 inner race fault
load('data/interim/CWRU/a4_ir_fault_014.mat');
[N, M] = size(x);
A_a4 = zeros(N, I_imf, M);
for m=1:M
    [A_a4(:, :, m), ~] = generate_ensemble_IMF(x(:, m), M_ens, I_imf);
end
A_sen_a4 = A_a4(:, 1, :);
F_EEMD_a4 = extract_EEMD_feature(A_sen_a4, sf, z);

% combine EEMD features for 021 inner race fault
load('data/interim/CWRU/a5_ir_fault_021.mat');
[N, M] = size(x);
A_a5 = zeros(N, I_imf, M);
for m=1:M
    [A_a5(:, :, m), ~] = generate_ensemble_IMF(x(:, m), M_ens, I_imf);
end
A_sen_a5 = A_a5(:, 1, :);
F_EEMD_a5 = extract_EEMD_feature(A_sen_a5, sf, z);

% combine EEMD features for 028 inner race fault
load('data/interim/CWRU/a6_ir_fault_028.mat');
[N, M] = size(x);
A_a6 = zeros(N, I_imf, M);
for m=1:M
    [A_a6(:, :, m), ~] = generate_ensemble_IMF(x(:, m), M_ens, I_imf);
end
A_sen_a6 = A_a6(:, 1, :);
F_EEMD_a6 = extract_EEMD_feature(A_sen_a6, sf, z);

% combine EEMD features for 014 ball race fault
load('data/interim/CWRU/a7_b_fault_014.mat');
[N, M] = size(x);
A_a7 = zeros(N, I_imf, M);
for m=1:M
    [A_a7(:, :, m), ~] = generate_ensemble_IMF(x(:, m), M_ens, I_imf);
end
A_sen_a7 = A_a7(:, 1, :);
F_EEMD_a7 = extract_EEMD_feature(A_sen_a7, sf, z);

for f=1:m_EEMD
    fig = figure('Position', [0 0 400 300]);hold on
    plot(F_EEMD_a1(f, :), 'Marker' , 'o');
    plot(F_EEMD_a2(f, :), 'Marker' , '+');
    plot(F_EEMD_a3(f, :), 'Marker' , '*');
    plot(F_EEMD_a4(f, :), 'Marker' , 's');
    plot(F_EEMD_a5(f, :), 'Marker' , '^');
    plot(F_EEMD_a6(f, :), 'Marker' , 'p');
    plot(F_EEMD_a7(f, :), 'Marker' , 'h');
    title(strcat('CWRU Data: EEMD Feature #', num2str(f), ', z=', num2str(z)));
    xlabel('Sample point');
    ylabel(strcat('F', num2str(f)));
    legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Location', 'northeastoutside');
    saveas(fig, strcat('reports/figures/CWRU_EEMD_F', num2str(f), '_z', num2str(z), '.png'));
end