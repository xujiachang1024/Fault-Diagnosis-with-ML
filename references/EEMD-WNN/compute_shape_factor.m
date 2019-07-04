function f = compute_shape_factor(x)
    N = size(x, 1);
    f = sqrt(sum(x .^ 2) / N) / (sum(abs(x)) / N);
end

