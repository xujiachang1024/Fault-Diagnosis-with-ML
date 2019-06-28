%{
    Combine the time-domain features
    @param x: a signal matrix
    @return F_time: the time-domain feature vector
%}
function F_time = combine_time_features(x)
    [N, M] = size(x);
    F_time = zeros(6, M);
    for m=1:M
        % combine the shape factor
        F_time(1, m) = f1_shape_factor(x(:, m), N);
        % combine the crest factor
        F_time(2, m) = f2_crest_factor(x(:, m), N);
        % combine the impulse factor
        F_time(3, m) = f3_impulse_factor(x(:, m), N);
        % combine the margin factor
        F_time(4, m) = f4_margin_factor(x(:, m), N);
        % combine the kurtosis factor
        F_time(5, m) = f5_kurtosis_factor(x(:, m), N);
        % combine the skewness factor
        F_time(6, m) = f6_skewness_factor(x(:, m), N);
    end
end

