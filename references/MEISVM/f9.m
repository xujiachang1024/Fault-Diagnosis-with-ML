%{
    Feature 9
    @param s: a spectrum
    @param K: the number of spectrum lines
    @param F7: feature 7, the vibration energy in the frequency domain
    @param F8: feature 8
    @return F9: feature 9
%}
function F9 = f9(s, K, F7, F8)
    F9 = sum((s - F7) .^ 3) / (K * (sqrt(F8) .^ 3));
end
