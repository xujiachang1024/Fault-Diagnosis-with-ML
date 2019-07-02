%{
    Combine the frequency-domain features
    @param s: the spectrums
    @param K: the number of spectrum lines
    @param f: the frequency values of the spectrum lines
    @return F_freq: the frequency-domain feature vector
%}
function F_freq = combine_freq_features(s, K, f)
    F_freq(1, :) = f7(s, K);
    F_freq(2, :) = f8(s, K, F_freq(1, :));
    F_freq(3, :) = f9(s, K, F_freq(1, :), F_freq(2, :));
    F_freq(4, :) = f10(s, K, F_freq(1, :), F_freq(2, :));
    F_freq(5, :) = f11(s, K, f);
    F_freq(6, :) = f12(s, K, f, F_freq(5, :));
    F_freq(7, :) = f13(s, K, f);
    F_freq(8, :) = f14(s, K, f);
    F_freq(9, :) = f15(s, K, f);
    F_freq(10, :) = f16(F_freq(5, :), F_freq(6, :));
    F_freq(11, :) = f17(s, K, f, F_freq(5, :), F_freq(6, :));
    F_freq(12, :) = f18(s, K, f, F_freq(5, :), F_freq(6, :));
    F_freq(13, :) = f19(s, K, f, F_freq(5, :), F_freq(6, :));
    F_freq = real(F_freq);
end

