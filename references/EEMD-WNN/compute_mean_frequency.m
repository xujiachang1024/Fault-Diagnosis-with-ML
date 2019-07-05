function f = compute_mean_frequency(x, sf)
    N = size(x, 1);
    [f, ~] = compute_spectrum(x, N, sf, 1);
    f = mean(f);
end

