%{
    Feature 4: the margin factor
    @param x: a signal series
    @param N: the number of data points
    @return F4: feature 4, the margin factor
%}
function F4 = f4_margin_factor(x, N)
    F4 = max(abs(x)) / (sum(sqrt(abs(x))) / N) .^ 2;
end