%{
    Compute the spectrum
    @param x: a signal series
    @param N: the number of data points
    @param sf: the sampling frequency
    @return f: the frequency
    @return s: the spectrum
%}
function [f, s] = compute_spectrum(x, N, sf)
    % compute the frequency domain
    fd = (sf * (0:(N/2)) / N)';
    % compute the Fourier transform of the signal
    Y = fft(x);
    % compute the two-sided spectrum P2
    P2 = abs(Y / N);
    % compute the single-sided spectrum P1
    P1 = P2(1:(N / 2 + 1));
    P1(2:end-1) = 2 * P1(2:end-1);
    % filter spikes
    s_avg = mean(P1);
    s_std = std(P1);
    filtered = P1 > (s_avg + s_std);
    f = fd(filtered);
    s = P1(filtered);