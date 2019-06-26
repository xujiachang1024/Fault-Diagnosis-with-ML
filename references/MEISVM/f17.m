%{
    Feature 17
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @param F11: feature 11
    @param F12: feature 12
    @return F17: feature 17
%}
function F17 = f17(s, K, f, F11, F12)
    sum_numerator = 0.0;
    for k=1:K
        sum_numerator = sum_numerator + (f(k) - F11) .^ 3 * s(k);
    end
    F17 = sum_numerator / (K * F12 .^ 3);
end
