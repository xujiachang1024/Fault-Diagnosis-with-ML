%{
    Feature 7: the vibration energy in the frequency domain
    @param s: a spectrum
    @param K: the number of spectrum lines
    @return F1: feature 7, the vibration energy in the frequency domain
%}
function F7 = f7(s, K)
F7 = sum(s) / K;
end