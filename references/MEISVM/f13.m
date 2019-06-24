%{
    Feature 13
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @return F13: feature 13
%}
function F13 = f13(s, K, f)
    sum_numerator = 0.0
    for k=1:K
        sum_numerator = sum_numerator + f(k) .^ 2 * s(k);
    end
    F13 = sqrt(sum_numerator / sum(s));
end
