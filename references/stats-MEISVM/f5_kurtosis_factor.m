%{
    Feature 5: the kurtosis factor
    @param x: a signal series
    @param N: the number of data points
    @return F5: feature 5, the kurtosis factor
%}
function F5 = f5_kurtosis_factor(x, N)
    x_avg = mean(x);
    F5 = (sum((x - x_avg) .^ 4) / N) / (sqrt(sum((x - x_avg) .^ 2) / N) .^ 4);
end
