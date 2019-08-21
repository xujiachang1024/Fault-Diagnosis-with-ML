%{
    Feature 2: the crest factor
    @param x: a signal series
    @param N: the number of data points
    @return F2: feature 2, the crest factor
%}
function F2 = f2_crest_factor(x, N)
    F2 = max(abs(x)) / sqrt(sum(x .^ 2) / N);
end