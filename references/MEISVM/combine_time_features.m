%{
    Combine the time-domain features
    @param x: a signal series
    @param N: the number of data points
    @return F_time: the time-domain feature vector
%}
function F_time = combine_time_features(x, N)
    % combine the shape factor
    F_time(1, :) = f1_shape_factor(x, N);
    % combine the crest factor
    F_time(2, :) = f2_crest_factor(x, N);
    % combine the impulse factor
    F_time(3, :) = f3_impulse_factor(x, N);
    % combine the margin factor
    F_time(4, :) = f4_margin_factor(x, N);
    % combine the kurtosis factor
    F_time(5, :) = f5_kurtosis_factor(x, N);
    % combine the skewness factor
    F_time(6, :) = f6_skewness_factor(x, N);
end

