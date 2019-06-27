clear;
load('data/interim/MFPT/baselines.mat');
[N, M] = size(x);
sf = 97656;
fd = sf * (0:(N/2)) / N;
plotting = false;
figure();hold on
for m=1:M
    [fd, P1] = compute_spectrum(x(:, m), N, sf);
    subplot(4, 3, m);
    plot(fd', P1);
    title(strcat('Single-Sided Amplitude Spectrum of x(t), MFPT Baseline #', num2str(m)));
    xlabel('frequency domain (Hz)');
    ylabel('|P1(f)|');
    ylim([0 0.06]);
end