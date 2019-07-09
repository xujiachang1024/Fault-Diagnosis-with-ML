clear;
Z = 5;
M = 700;
a_F_stacked = zeros(Z, M);
c_F_stacked = zeros(Z, M);

load('data/processed/CWRU/a_stats_F14_freq_z0.mat');
a_F_stacked(1, :) = F;
load('data/processed/CWRU/a_stats_F14_freq_z0.5.mat');
a_F_stacked(2, :) = F;
load('data/processed/CWRU/a_stats_F14_freq_z1.mat');
a_F_stacked(3, :) = F;
load('data/processed/CWRU/a_stats_F14_freq_z1.5.mat');
a_F_stacked(4, :) = F;
load('data/processed/CWRU/a_stats_F14_freq_z2.mat');
a_F_stacked(5, :) = F;

a_F_avg = mean(a_F_stacked, 1);
a_F_med = median(a_F_stacked, 1);

load('data/processed/CWRU/c_stats_F14_freq_z0.mat');
c_F_stacked(1, :) = F;
load('data/processed/CWRU/c_stats_F14_freq_z0.5.mat');
c_F_stacked(2, :) = F;
load('data/processed/CWRU/c_stats_F14_freq_z1.mat');
c_F_stacked(3, :) = F;
load('data/processed/CWRU/c_stats_F14_freq_z1.5.mat');
c_F_stacked(4, :) = F;
load('data/processed/CWRU/c_stats_F14_freq_z2.mat');
c_F_stacked(5, :) = F;

c_F_avg = mean(c_F_stacked, 1);
c_F_med = median(c_F_stacked, 1);

for z=1:Z
    fig = figure('Position', [0 0 400 300]);hold on
    plot(a_F_stacked(z, 001:100), 'Marker' , 'o', 'Color', 'r');
    plot(a_F_stacked(z, 101:200), 'Marker' , '+', 'Color', 'r');
    plot(a_F_stacked(z, 201:300), 'Marker' , '*', 'Color', 'r');
    plot(a_F_stacked(z, 301:400), 'Marker' , 's', 'Color', 'r');
    plot(a_F_stacked(z, 401:500), 'Marker' , '^', 'Color', 'r');
    plot(a_F_stacked(z, 501:600), 'Marker' , 'p', 'Color', 'r');
    plot(a_F_stacked(z, 601:700), 'Marker' , 'h', 'Color', 'r');
    plot(c_F_stacked(z, 001:100), 'Marker' , 'o', 'Color', 'g');
    plot(c_F_stacked(z, 101:200), 'Marker' , '+', 'Color', 'g');
    plot(c_F_stacked(z, 201:300), 'Marker' , '*', 'Color', 'g');
    plot(c_F_stacked(z, 301:400), 'Marker' , 's', 'Color', 'g');
    plot(c_F_stacked(z, 401:500), 'Marker' , '^', 'Color', 'g');
    plot(c_F_stacked(z, 501:600), 'Marker' , 'p', 'Color', 'g');
    plot(c_F_stacked(z, 601:700), 'Marker' , 'h', 'Color', 'g');
    title(strcat('CWRU Data: Freq-Domain Feature #14, z=', num2str(0.5 * (z - 1))));
    xlabel('Sample point');
    ylabel('F14');
    legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Location', 'northeastoutside');
end

fig = figure('Position', [0 0 400 300]);hold on
plot(a_F_avg(:, 001:100), 'Marker' , 'o', 'Color', 'r');
plot(a_F_avg(:, 101:200), 'Marker' , '+', 'Color', 'r');
plot(a_F_avg(:, 201:300), 'Marker' , '*', 'Color', 'r');
plot(a_F_avg(:, 301:400), 'Marker' , 's', 'Color', 'r');
plot(a_F_avg(:, 401:500), 'Marker' , '^', 'Color', 'r');
plot(a_F_avg(:, 501:600), 'Marker' , 'p', 'Color', 'r');
plot(a_F_avg(:, 601:700), 'Marker' , 'h', 'Color', 'r');
plot(c_F_avg(:, 001:100), 'Marker' , 'o', 'Color', 'g');
plot(c_F_avg(:, 101:200), 'Marker' , '+', 'Color', 'g');
plot(c_F_avg(:, 201:300), 'Marker' , '*', 'Color', 'g');
plot(c_F_avg(:, 301:400), 'Marker' , 's', 'Color', 'g');
plot(c_F_avg(:, 401:500), 'Marker' , '^', 'Color', 'g');
plot(c_F_avg(:, 501:600), 'Marker' , 'p', 'Color', 'g');
plot(c_F_avg(:, 601:700), 'Marker' , 'h', 'Color', 'g');
title('CWRU Data: Freq-Domain Feature #14, average');
xlabel('Sample point');
ylabel('F14');
legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Location', 'northeastoutside');

fig = figure('Position', [0 0 400 300]);hold on
plot(a_F_med(:, 001:100), 'Marker' , 'o', 'Color', 'r');
plot(a_F_med(:, 101:200), 'Marker' , '+', 'Color', 'r');
plot(a_F_med(:, 201:300), 'Marker' , '*', 'Color', 'r');
plot(a_F_med(:, 301:400), 'Marker' , 's', 'Color', 'r');
plot(a_F_med(:, 401:500), 'Marker' , '^', 'Color', 'r');
plot(a_F_med(:, 501:600), 'Marker' , 'p', 'Color', 'r');
plot(a_F_med(:, 601:700), 'Marker' , 'h', 'Color', 'r');
plot(c_F_med(:, 001:100), 'Marker' , 'o', 'Color', 'g');
plot(c_F_med(:, 101:200), 'Marker' , '+', 'Color', 'g');
plot(c_F_med(:, 201:300), 'Marker' , '*', 'Color', 'g');
plot(c_F_med(:, 301:400), 'Marker' , 's', 'Color', 'g');
plot(c_F_med(:, 401:500), 'Marker' , '^', 'Color', 'g');
plot(c_F_med(:, 501:600), 'Marker' , 'p', 'Color', 'g');
plot(c_F_med(:, 601:700), 'Marker' , 'h', 'Color', 'g');
title('CWRU Data: Freq-Domain Feature #14, median');
xlabel('Sample point');
ylabel('F1');
legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Location', 'northeastoutside');
