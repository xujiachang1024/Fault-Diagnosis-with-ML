%{
    Feature 11
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @return F11: feature 11
%}
function F11 = f11(s, K, f)
    F11 = sum(f .* s) / sum(s);
end
