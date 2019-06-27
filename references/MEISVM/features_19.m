%{
    Compute 19 statistical features for MEISVM
    @param x: a signal seris
    @param N: the number of data points
    @param sf: the sampling frequency
    @return F: the feature vector
%}
function F = features_19(x, N, sf)
    % compute the spectrum P1
    [fd, P1] = compute_spectrum(x, N, sf);
    % compute the feature vector F
    F = zeros(19, 1);
%     F(1, :) = f1_shape_factor(x, N);
%     F(2, :) = f2_crest_factor(x, N);
%     F(3, :) = f3_impulse_factor(x, N);
%     F(4, :) = f4_margin_factor(x, N);
%     F(5, :) = f5_kurtosis_factor(x, N);
%     F(6, :) = f6_skewness_factor(x, N);
%     F(7, :) = f7(s, K);
%     F(8, :) = f8(s, K, F(7, :));
%     F(9, :) = f9(s, K, F(7, :), F(8, :));
%     F(10, :) = f10(s, K, F(7, :), F(8, :));
%     F(11, :) = f11(s, K, f);
%     F(12, :) = f12(s, K, f, F(11, :));
%     F(13, :) = f13(s, K, f);
%     F(14, :) = f14(s, K, f);
%     F(15, :) = f15(s, K, f);
%     F(16, :) = f16(F(11, :), F(12, :));
%     F(17, :) = f17(s, K, f, F(11, :), F(12, :));
%     F(18, :) = f18(s, K, f, F(11, :), F(12, :));
%     F(19, :) = f19(s, K, f, F(11, :), F(12, :));
end