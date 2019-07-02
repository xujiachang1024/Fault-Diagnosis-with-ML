clear;
F = 6;

% combine time-domain features for normal
load('data/interim/CWRU/a1_normal.mat');
[N, M] = size(x);
F_time_a1 = zeros(F, M);
for m=1:M
    F_time_a1(:, m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for 014 outer race fault
load('data/interim/CWRU/a2_or_fault_014.mat');
[N, M] = size(x);
F_time_a2 = zeros(F, M);
for m=1:M
    F_time_a2(:, m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for 007 inner race fault
load('data/interim/CWRU/a3_ir_fault_007.mat');
[N, M] = size(x);
F_time_a3 = zeros(F, M);
for m=1:M
    F_time_a3(:, m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for 014 inner race fault
load('data/interim/CWRU/a4_ir_fault_014.mat');
[N, M] = size(x);
F_time_a4 = zeros(F, M);
for m=1:M
    F_time_a4(:, m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for 021 inner race fault
load('data/interim/CWRU/a5_ir_fault_021.mat');
[N, M] = size(x);
F_time_a5 = zeros(F, M);
for m=1:M
    F_time_a5(:, m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for 028 inner race fault
load('data/interim/CWRU/a6_ir_fault_028.mat');
[N, M] = size(x);
F_time_a6 = zeros(F, M);
for m=1:M
    F_time_a6(:, m) = combine_time_features(x(:, m), N);
end

% combine time-domain features for 014 ball fault
load('data/interim/CWRU/a7_b_fault_014.mat');
[N, M] = size(x);
F_time_a7 = zeros(F, M);
for m=1:M
    F_time_a7(:, m) = combine_time_features(x(:, m), N);
end

for f=1:F
    fig = figure('Position', [0 0 400 300]);hold on
    plot(F_time_a1(f, :), 'Marker' , 'o');
    plot(F_time_a2(f, :), 'Marker' , '+');
    plot(F_time_a3(f, :), 'Marker' , '*');
    plot(F_time_a4(f, :), 'Marker' , 's');
    plot(F_time_a5(f, :), 'Marker' , '^');
    plot(F_time_a6(f, :), 'Marker' , 'p');
    plot(F_time_a7(f, :), 'Marker' , 'h');
    title(strcat('CWRU Data Set: Time-Domain Feature #', num2str(f)));
    xlabel('Sample point');
    ylabel(strcat('F', num2str(f)));
    legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Location', 'northeastoutside');
    saveas(fig, strcat('reports/figures/CWRU_stats_F', num2str(f), '_time.png'));
end