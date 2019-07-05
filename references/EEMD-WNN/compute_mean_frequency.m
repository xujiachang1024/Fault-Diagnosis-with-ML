function f = compute_mean_frequency(x, sf, z)
    N = size(x, 1);
    [f, ~] = compute_spectrum(x, N, sf, z);
    f = mean(f);
end

