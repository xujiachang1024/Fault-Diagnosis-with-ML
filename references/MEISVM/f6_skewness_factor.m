%{
    Feature 6: the skewness factor
    @param x: a signal seris
    @param N: the number of data points
    @return F1: feature 6, the skewness factor
%}
function F6 = f6_skewness_factor(x, N)
x_mean = mean(x);
sum_numerator = 0.0;
for n=1:N
    sum_numerator = sum_numerator + (x(n) - x_mean) .^ 3;
end
sum_denominator = 0.0;
for n=1:N
    sum_denominator = sum_denominator + (x(n) - x_mean) .^ 2;
end
F6 = (sum_numerator / N) / (sqrt(sum_denominator / N) .^ 3);
end