clear;
M_ens = 10;
I_imf = 4;

% combine EEMD features for normal
load('data/interim/CWRU/a1_normal.mat');
[~, M] = size(x);
F_EEMD_a1 = zeros(I_imf, M);
for m=1:M
    [~, F_EEMD_a1(:, m)] = compute_EEMD_feature(x(:, m), M_ens, I_imf);
end

% combine EEMD features for 014 outer race faults
load('data/interim/CWRU/a2_or_fault_014.mat');
[~, M] = size(x);
F_EEMD_a2 = zeros(I_imf, M);
for m=1:M
    [~, F_EEMD_a2(:, m)] = compute_EEMD_feature(x(:, m), M_ens, I_imf);
end

% combine EEMD features for 007 inner race faults
load('data/interim/CWRU/a3_ir_fault_007.mat');
[~, M] = size(x);
F_EEMD_a3 = zeros(I_imf, M);
for m=1:M
    [~, F_EEMD_a3(:, m)] = compute_EEMD_feature(x(:, m), M_ens, I_imf);
end

% combine EEMD features for 014 inner race faults
load('data/interim/CWRU/a4_ir_fault_014.mat');
[~, M] = size(x);
F_EEMD_a4 = zeros(I_imf, M);
for m=1:M
    [~, F_EEMD_a4(:, m)] = compute_EEMD_feature(x(:, m), M_ens, I_imf);
end

% combine EEMD features for 021 inner race faults
load('data/interim/CWRU/a5_ir_fault_021.mat');
[~, M] = size(x);
F_EEMD_a5 = zeros(I_imf, M);
for m=1:M
    [~, F_EEMD_a5(:, m)] = compute_EEMD_feature(x(:, m), M_ens, I_imf);
end

% combine EEMD features for 028 inner race faults
load('data/interim/CWRU/a6_ir_fault_028.mat');
[~, M] = size(x);
F_EEMD_a6 = zeros(I_imf, M);
for m=1:M
    [~, F_EEMD_a6(:, m)] = compute_EEMD_feature(x(:, m), M_ens, I_imf);
end

% combine EEMD features for 014 ball faults
load('data/interim/CWRU/a7_b_fault_014.mat');
[~, M] = size(x);
F_EEMD_a7 = zeros(I_imf, M);
for m=1:M
    [~, F_EEMD_a7(:, m)] = compute_EEMD_feature(x(:, m), M_ens, I_imf);
end

for f=1:I_imf
    fig = figure('Position', [0 0 400 300]);hold on
    plot(F_EEMD_a1(f, :), 'Marker' , 'o');
    plot(F_EEMD_a2(f, :), 'Marker' , '+');
    plot(F_EEMD_a3(f, :), 'Marker' , '*');
    plot(F_EEMD_a4(f, :), 'Marker' , 's');
    plot(F_EEMD_a5(f, :), 'Marker' , '^');
    plot(F_EEMD_a6(f, :), 'Marker' , 'p');
    plot(F_EEMD_a7(f, :), 'Marker' , 'h');
    title(strcat('CWRU Data: EEMD Feature #', num2str(f)));
    xlabel('Sample point');
    ylabel(strcat('F', num2str(f)));
    legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Location', 'northeastoutside');
    saveas(fig, strcat('reports/figures/CWRU_EEMD_F', num2str(f), '.png'));
end