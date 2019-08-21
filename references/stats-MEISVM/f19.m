%{
    Feature 19
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @param F11: feature 11
    @param F12: feature 12
    @return F19: feature 19
%}
function F19 = f19(s, K, f, F11, F12)
    F19 = sum(((f - F11) .^ 0.5) .* s) / (K * sqrt(F12));
end
