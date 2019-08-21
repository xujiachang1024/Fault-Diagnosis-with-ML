%{
    Compute the mean frequency
    @param x: a signal series
    @param sf: the sampling frequency
    @param z: the z-score threshold to filter underlying frequencies
    @return f_avg: the mean frequency
%}
function f_avg = compute_mean_frequency(x, sf, z)
    N = size(x, 1);
    [f, ~] = compute_spectrum(x, N, sf, z);
    f_avg = mean(f);
end

