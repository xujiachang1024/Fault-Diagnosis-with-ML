%{
    Feature 15
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @return F15: feature 15
%}
function F15 = f15(s, K, f)
    F15 = sum((f .^ 2) .* s) / sqrt(sum(s) * sum((f .^ 4) .* s));
end
