%{
    Feature 14
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @return F14: feature 14
%}
function F14 = f14(s, K, f)
    sum_numerator = 0.0;
    sum_denominator = 0.0;
    for k=1:K
        sum_numerator = sum_numerator + f(k) .^ 4 * s(k);
        sum_denominator = sum_denominator + f(k) .^ 2 * s(k);
    end
    F14 = sqrt(sum_numerator / sum_denominator);
end
