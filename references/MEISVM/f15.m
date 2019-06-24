%{
    Feature 15
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @return F15: feature 15
%}
function F15 = f15(s, K, f)
    sum_numerator = 0.0;
    sum_denominator = 0.0;
    for k=1:K
        sum_numerator = sum_numerator + f(k) .^ 2 * s(k);
        sum_denominator = sum_denominator + f(k) .^ 4 * s(k);
    end
    F15 = sum_numerator / sqrt(sum(s) * sum_denominator);
end
