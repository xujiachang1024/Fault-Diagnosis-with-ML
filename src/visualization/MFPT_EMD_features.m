clear;
ss = [3 3 7 7];
% ss = [12 12 7 7];
% ss = [144 144 84 84];
m_EMD = 8;
F_EMD = zeros(m_EMD, sum(ss));

% combine EMD features for baselines
load('data/interim/MFPT/baselines.mat');
[~, M] = size(x);
for m=1:M
    F_EMD(:, m) = compute_EMD_feature(x(:, m), m_EMD);
end

% combine EMD features for OR faults
load('data/interim/MFPT/or_faults.mat');
[~, M] = size(x);
for m=1:M
    F_EMD(:, ss(1) + m) = combine_time_features(x(:, m), m_EMD);
end

% combine time-domain features for OR faults (variable loads)
load('data/interim/MFPT/or_faults_vload.mat');
[~, M] = size(x);
for m=1:M
    F_EMD(:, sum(ss(1:2)) + m) = combine_time_features(x(:, m), m_EMD);
end

% combine EMD features for IR faults (variable loads)
load('data/interim/MFPT/ir_faults_vload.mat');
[~, M] = size(x);
for m=1:M
    F_EMD(:, sum(ss(1:3)) + m) = combine_time_features(x(:, m), e_EMD);
end

figure();hold on
for f=1:F
    subplot(3, 2, f);hold on
    plot(F_time(f, 1:ss(1)));
    plot(F_time(f, (ss(1)+1):sum(ss(1:3))));
    plot(F_time(f, (sum(ss(1:3))+1):sum(ss)));
    title(strcat('Feature #', num2str(f)));
    xlabel('Sample point')
    ylabel(strcat('F', num2str(f)))
    legend('Baselines', 'OR Faults', 'IR Faults');
end

figure();hold on
for f=1:F
    subplot(3, 5, f);hold on
    plot(F_freq(f, 1:ss(1)));
    plot(F_freq(f, (ss(1)+1):sum(ss(1:2))));
    plot(F_freq(f, (sum(ss(1:2))+1):sum(ss(1:3))));
    plot(F_freq(f, (sum(ss(1:3))+1):sum(ss)));
    title(strcat('Feature #', num2str(6 + f)));
    xlabel('Sample point')
    ylabel(strcat('F', num2str(6 + f)))
    legend('Baselines', 'OR Faults', 'OR Faults (vload)', 'IR Faults (vload)');
end