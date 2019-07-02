clear;
m_EMD = 5;

% combine EMD features for normal
load('data/interim/CWRU/a1_normal.mat');
[~, M] = size(x);
F_EMD_a1 = zeros(m_EMD, M);
for m=1:M
    F_EMD_a1(:, m) = compute_EMD_feature(x(:, m), m_EMD);
end

% combine EMD features for 014 outer race fault
load('data/interim/CWRU/a2_or_fault_014.mat');
[~, M] = size(x);
F_EMD_a2 = zeros(m_EMD, M);
for m=1:M
    F_EMD_a2(:, m) = compute_EMD_feature(x(:, m), m_EMD);
end

% combine EMD features for 007 inner race fault
load('data/interim/CWRU/a3_ir_fault_007.mat');
[~, M] = size(x);
F_EMD_a3 = zeros(m_EMD, M);
for m=1:M
    F_EMD_a3(:, m) = compute_EMD_feature(x(:, m), m_EMD);
end

% combine EMD features for 014 inner race fault
load('data/interim/CWRU/a4_ir_fault_014.mat');
[~, M] = size(x);
F_EMD_a4 = zeros(m_EMD, M);
for m=1:M
    F_EMD_a4(:, m) = compute_EMD_feature(x(:, m), m_EMD);
end

% combine EMD features for 021 inner race fault
load('data/interim/CWRU/a5_ir_fault_021.mat');
[~, M] = size(x);
F_EMD_a5 = zeros(m_EMD, M);
for m=1:M
    F_EMD_a5(:, m) = compute_EMD_feature(x(:, m), m_EMD);
end

% combine EMD features for 028 inner race fault
load('data/interim/CWRU/a6_ir_fault_028.mat');
[~, M] = size(x);
F_EMD_a6 = zeros(m_EMD, M);
for m=1:M
    F_EMD_a6(:, m) = compute_EMD_feature(x(:, m), m_EMD);
end

% combine EMD features for 014 ball fault
load('data/interim/CWRU/a7_b_fault_014.mat');
[~, M] = size(x);
F_EMD_a7 = zeros(m_EMD, M);
for m=1:M
    F_EMD_a7(:, m) = compute_EMD_feature(x(:, m), m_EMD);
end

figure();hold on
for f=1:m_EMD
    subplot(2, 3, f);hold on
    plot(F_EMD_a1(f, :), 'Marker' , 'o');
    plot(F_EMD_a2(f, :), 'Marker' , '+');
    plot(F_EMD_a3(f, :), 'Marker' , '*');
    plot(F_EMD_a4(f, :), 'Marker' , 's');
    plot(F_EMD_a5(f, :), 'Marker' , '^');
    plot(F_EMD_a6(f, :), 'Marker' , 'p');
    plot(F_EMD_a7(f, :), 'Marker' , 'h');
    title(strcat('Feature #', num2str(f)));
    xlabel('Sample point');
    ylabel(strcat('F', num2str(f)));
    legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014');
end