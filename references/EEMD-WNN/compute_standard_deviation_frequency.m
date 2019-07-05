function f_std = compute_standard_deviation_frequency(x, sf, z)
    N = size(x, 1);
    [f, ~] = compute_spectrum(x, N, sf, z);
    f_std = std(f);
end

