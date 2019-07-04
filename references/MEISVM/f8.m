%{
    Feature 8
    @param s: a spectrum
    @param K: the number of spectrum lines
    @param F7: feature 7, the vibration energy in the frequency domain
    @return F8: feature 8
%}
function F8 = f8(s, K, F7)
    F8 = sum((s - F7) .^ 2) / (K - 1);
end
