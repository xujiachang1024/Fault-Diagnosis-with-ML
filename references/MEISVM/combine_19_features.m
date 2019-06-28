%{
    Compute 19 statistical features for MEISVM
    @param x: a signal seris
    @param N: the number of data points
    @param sf: the sampling frequency
    @return F: the feature vector
%}
function F = combine_19_features(x, N, sf)
    % compute the spectrum
    [f, s] = compute_spectrum(x, N, sf);
    K = size(s, 1);
    % combine the time-domain features
    F(1:6, :) = combine_time_features(x, N);
    % combine the frequency-domain features
    F(7:19, :) = combine_freq_freatures(s, K, f);
end