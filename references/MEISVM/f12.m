%{
    Feature 12
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @param F11: feature 11
    @return F12: feature 12
%}
function F12 = f12(s, K, f, F11)
    F12 = sqrt(sum(((f - F11) .^ 2) .* s) / K);
end
