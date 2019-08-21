%{
    Compute the standard deviation frequency
    @param x: a signal series
    @param sf: the sampling frequency
    @param z: the z-score threshold to filter underlying frequencies
    @return f_std: the standard deviation frequency
%}
function f_std = compute_standard_deviation_frequency(x, sf, z)
    N = size(x, 1);
    [f, ~] = compute_spectrum(x, N, sf, z);
    f_std = std(f);
end

