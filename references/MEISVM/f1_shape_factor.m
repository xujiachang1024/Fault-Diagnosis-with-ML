%{
    Feature 1: the shape factor
    @param x: a signal seris
    @param N: the number of data points
    @return F1: feature 1, the shape factor
%}
function F1 = f1_shape_factor(x, N)
    F1 = sqrt(sumsqr(x) / N) / (sumabs(x) / N);
end