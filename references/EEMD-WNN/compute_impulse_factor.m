function f = compute_impulse_factor(x)
    N = size(x, 1);
    f = max(abs(x)) / (sum(abs(x)) / N);
end

