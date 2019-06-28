%{
    Feature 4: the margin factor
    @param x: a signal seris
    @param N: the number of data points
    @return F4: feature 4, the margin factor
%}
function F4 = f4_margin_factor(x, N)
    sum_sqrt_abs = 0.0;
    for n=1:N
        sum_sqrt_abs = sum_sqrt_abs + sqrt(abs(x(n)));
    end
    F4 = max(abs(x)) / (sum_sqrt_abs / N) .^ 2;
end