%{
    Compute the spectrum
    @param x: a signal series
    @param N: the number of data points
    @param sf: the sampling frequency
    @return fd: the frequency domain
    @return P1: the single-sided spectrum
%}
function [fd, P1] = compute_spectrum(x, N, sf)
    % compute the frequency domain
    fd = (sf * (0:(N/2)) / N)';
    % compute the Fourier transform of the signal
    Y = fft(x);
    % compute the two-sided spectrum P2
    P2 = abs(Y / N);
    % compute the single-sided spectrum P1
    P1 = P2(1:(int8(N / 2) + 1));
    P1(2:end-1) = 2 * P1(2:end-1);