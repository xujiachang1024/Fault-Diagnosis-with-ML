function f_rms = compute_root_mean_square_frequency(x, sf, z)
    N = size(x, 1);
    [f, ~] = compute_spectrum(x, N, sf, z);
    f_rms = sqrt(sum(f .^ 2) / N);
end

