clear;
load('data/interim/MFPT/baselines.mat');
[N, M] = size(x);
sf = 97656;
figure();hold on
for m=1:M
    [fd, P1] = compute_spectrum(x(:, m), N, sf);
    subplot(4, 3, m);
    plot(fd', P1);
    title(strcat('Single-Sided Amplitude Spectrum of x(t), MFPT Baseline #', num2str(m)));
    xlabel('frequency domain (Hz)');
    ylabel('|P1(f)|');
    xlim([0 50000]);
    ylim([0 0.06]);
end

clear;
load('data/interim/MFPT/or_faults.mat');
[N, M] = size(x);
sf = 97656;
figure();hold on
for m=1:M
    [fd, P1] = compute_spectrum(x(:, m), N, sf);
    subplot(4, 3, m);
    plot(fd', P1);
    title(strcat('Single-Sided Amplitude Spectrum of x(t), MFPT OR Fault #', num2str(m), ', load=270 lbs'));
    xlabel('frequency domain (Hz)');
    ylabel('|P1(f)|');
    xlim([0 50000]);
    ylim([0 0.06]);
end

clear;
load('data/interim/MFPT/or_faults_vload.mat');
loads = [25 50 100 150 200 250 300];
[N, M] = size(x);
sf = 48828;
figure();hold on
for m=1:M
    [fd, P1] = compute_spectrum(x(:, m), N, sf);
    subplot(3, 3, m);
    plot(fd', P1);
    title(strcat('Single-Sided Amplitude Spectrum of x(t), MFPT OR Fault #', num2str(m), ', load=', num2str(loads(m))));
    xlabel('frequency domain (Hz)');
    ylabel('|P1(f)|');
    xlim([0 50000]);
    ylim([0 0.06]);
end

clear;
load('data/interim/MFPT/ir_faults_vload.mat');
loads = [0 50 100 150 200 250 300];
[N, M] = size(x);
sf = 48828;
figure();hold on
for m=1:M
    [fd, P1] = compute_spectrum(x(:, m), N, sf);
    subplot(3, 3, m);
    plot(fd', P1);
    title(strcat('Single-Sided Amplitude Spectrum of x(t), MFPT IR Fault #', num2str(m), ', load=', num2str(loads(m))));
    xlabel('frequency domain (Hz)');
    ylabel('|P1(f)|');
    xlim([0 50000]);
    ylim([0 0.06]);
end