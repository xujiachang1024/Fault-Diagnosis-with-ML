%{
    Feature 10
    @param s: a spectrum
    @param K: the number of spectrum lines
    @param F7: feature 7, the vibration energy in the frequency domain
    @param F8: feature 8
    @return F10: feature 10
%}
function F10 = f10(s, K, F7, F8)
    sum_numerator = 0.0;
    for k=1:K
        sum_numerator = sum_numerator + (s(k) - F7) .^ 4;
    end
    F10 = sum_numerator / (K * (F8 .^ 2));
end
