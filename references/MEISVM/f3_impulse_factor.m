%{
    Feature 3: the impulse factor
    @param x: a signal seris
    @param N: the number of data points
    @return F3: feature 3, the impulse
%}
function F3 = f3_impulse_factor(x, N)
    F3 = max(abs(x)) / (sumabs(x) / N);
end