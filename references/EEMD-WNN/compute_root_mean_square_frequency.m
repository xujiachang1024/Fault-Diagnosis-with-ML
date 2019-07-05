function f = compute_root_mean_square_frequency(x, sf, z)
    N = size(x, 1);
    [f, ~] = compute_spectrum(x, N, sf, z);
    f = sqrt(sum(f .^ 2) / N);
end

