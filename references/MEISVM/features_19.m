%{
    Compute 19 statistical features for MEISVM
    @param x: a signal seris
    @param N: the number of data points
    @param sf: the sampling frequency
    @param plot: whether to plot the spectrum
    @return F: the feature vector
%}
function F = features_19(x, N, sf, plot)
    % compute the Fourier transform of the signal
    Y = fft(x);
    % compute the two-sided spectrum P2
    P2 = abs(Y / N);
    % compute the single-sided spectrum P1
    P1 = P2(1:(N / 2 + 1));
    P1(2:end-1) = 2 * P1(2:end-1);
    P1
    % define the fequency domain fd and plot the single-sided spectrum P1
    if plot ~= false
        fd = sf * (0:(N/2)) / N;
        plot(fd, P1)
        title('Single-Sided Amplitude Spectrum of x(t)')
        xlabel('frequency domain (Hz)')
        ylabel('|P1(f)|')
    end
    % compute the feature vector F
    F = zeros(19, 1);
%     F(1, :) = f1_shape_factor(x, N);
%     F(2, :) = f2_crest_factor(x, N);
%     F(3, :) = f3_impulse_factor(x, N);
%     F(4, :) = f4_margin_factor(x, N);
%     F(5, :) = f5_kurtosis_factor(x, N);
%     F(6, :) = f6_skewness_factor(x, N);
end