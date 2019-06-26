%{
    Feature 5: the kurtosis factor
    @param x: a signal seris
    @param N: the number of data points
    @return F5: feature 5, the kurtosis factor
%}
function F5 = f5_kurtosis_factor(x, N)
    x_mean = mean(x);
    sum_numerator = 0.0;
    for n=1:N
        sum_numerator = sum_numerator + (x(n) - x_mean) .^ 4;
    end
    sum_denominator = 0.0;
    for n=1:N
        sum_denominator = sum_denominator + (x(n) - x_mean) .^ 2;
    end
    F5 = (sum_numerator / N) / (sqrt(sum_denominator / N) .^ 4);
end
