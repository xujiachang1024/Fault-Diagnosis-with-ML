%{
    Feature 14
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @return F14: feature 14
%}
function F14 = f14(s, K, f)
    F14 = sqrt(sum((f .^ 4) .* s) / sum((f .^ 2) .* s));
end
