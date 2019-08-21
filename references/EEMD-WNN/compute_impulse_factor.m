%{
    Compute the impulse factor
    @param x: a signal series
    @return f: the impulse factor
%}
function f = compute_impulse_factor(x)
    N = size(x, 1);
    f = max(abs(x)) / (sum(abs(x)) / N);
end

