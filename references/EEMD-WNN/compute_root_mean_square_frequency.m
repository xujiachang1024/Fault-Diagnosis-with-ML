%{
    Compute the root mean square frequency
    @param x: a signal series
    @param sf: the sampling frequency
    @param z: the z-score threshold to filter underlying frequencies
    @return f_rms: the root mean square frequency
%}
function f_rms = compute_root_mean_square_frequency(x, sf, z)
    N = size(x, 1);
    [f, ~] = compute_spectrum(x, N, sf, z);
    f_rms = rms(f);
end

