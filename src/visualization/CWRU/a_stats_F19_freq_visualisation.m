clear;
Z = 5;
M = 700;
F_stacked = zeros(Z, M);

load('data/processed/CWRU/a_stats_F19_freq_z0.mat');
F_stacked(1, :) = F;
load('data/processed/CWRU/a_stats_F19_freq_z0.5.mat');
F_stacked(2, :) = F;
load('data/processed/CWRU/a_stats_F19_freq_z1.mat');
F_stacked(3, :) = F;
load('data/processed/CWRU/a_stats_F19_freq_z1.5.mat');
F_stacked(4, :) = F;
load('data/processed/CWRU/a_stats_F19_freq_z2.mat');
F_stacked(5, :) = F;

F_avg = mean(F_stacked, 1);

for z=1:Z
    fig = figure('Position', [0 0 400 300]);hold on
    plot(F_stacked(z, 001:100), 'Marker' , 'o');
    plot(F_stacked(z, 101:200), 'Marker' , '+');
    plot(F_stacked(z, 201:300), 'Marker' , '*');
    plot(F_stacked(z, 301:400), 'Marker' , 's');
    plot(F_stacked(z, 401:500), 'Marker' , '^');
    plot(F_stacked(z, 501:600), 'Marker' , 'p');
    plot(F_stacked(z, 601:700), 'Marker' , 'h');
    title(strcat('CWRU Data: Freq-Domain Feature #19, z=', num2str(0.5 * (z - 1))));
    xlabel('Sample point');
    ylabel('F19');
    legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Location', 'northeastoutside');
end

fig = figure('Position', [0 0 400 300]);hold on
plot(F_avg(:, 001:100), 'Marker' , 'o');
plot(F_avg(:, 101:200), 'Marker' , '+');
plot(F_avg(:, 201:300), 'Marker' , '*');
plot(F_avg(:, 301:400), 'Marker' , 's');
plot(F_avg(:, 401:500), 'Marker' , '^');
plot(F_avg(:, 501:600), 'Marker' , 'p');
plot(F_avg(:, 601:700), 'Marker' , 'h');
title('CWRU Data: Freq-Domain Feature #19, average');
xlabel('Sample point');
ylabel('F19');
legend('Normal', 'OR 014', 'IR 007', 'IR 014', 'IR 021', 'IR 028', 'B 014', 'Location', 'northeastoutside');