%{
    Feature 18
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @param F11: feature 11
    @param F12: feature 12
    @return F18: feature 18
%}
function F18 = f18(s, K, f, F11, F12)
    sum_numerator = 0.0;
    for k=1:K
        sum_numerator = sum_numerator + (f(k) - F11) .^ 4 * s(k);
    end
    F18 = sum_numerator / (K * F12 .^ 4));
end
