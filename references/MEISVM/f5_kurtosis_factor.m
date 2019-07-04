%{
    Feature 5: the kurtosis factor
    @param x: a signal seris
    @param N: the number of data points
    @return F5: feature 5, the kurtosis factor
%}
function F5 = f5_kurtosis_factor(x, N)
    x_mean = mean(x);
    F5 = (sum((x - x_mean) .^ 4) / N) / (sqrt(sum((x - x_mean) .^ 2) / N) .^ 4);
end
