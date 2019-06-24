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
    sum_numerator = 0.0;
    for k=1:K
        sum_numerator = sum_numerator + sqrt(f(k) - F11) * s(k);
    end
    F19 = sum_numerator / (K * sqrt(F12));
end
