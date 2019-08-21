%{
    Feature 6: the skewness factor
    @param x: a signal series
    @param N: the number of data points
    @return F6: feature 6, the skewness factor
%}
function F6 = f6_skewness_factor(x, N)
    x_avg = mean(x);
    F6 = (sum((x - x_avg) .^ 3) / N) / (sqrt(sum((x - x_avg) .^ 2) / N) .^ 3);
end
