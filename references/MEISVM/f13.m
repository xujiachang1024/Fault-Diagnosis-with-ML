%{
    Feature 13
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @return F13: feature 13
%}
function F13 = f13(s, K, f)
    F13 = sqrt(sum((f .^ 2) .* s) / sum(s));
end
