%{
    Feature 11
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @return F11: feature 11
%}
function F11 = f11(s, K, f)
    sum_numerator = 0.0;
    for k=1:K
        sum_numerator = sum_numerator + f(k) * s(k);
    end
    F11 = sum_numerator / sum(s);
end
