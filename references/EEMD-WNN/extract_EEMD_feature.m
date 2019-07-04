%{
    Select sensitive IMF after EEMD algoirithm
    @param A:the sensitive IMF (N, 1, M)
    @return 
%}
function F = extract_EEMD_feature(A)
    % N: the number of data points in each sample
    % M: the number of samples
    [N, ~, M] = size(A);
    F = zeros(10, M);
    for m=1:M
        % feature 1: standard deviation
        F(1, m) = std(A(:, 1, m));
        % feature 2: kurtosis
        F(2, m) = kurtosis(A(:, 1, m));
        % feature 3: shape factor
        F(3, m) = sqrt(sum(A(:, 1, m) .^ 2) / N) / (sumabs(A(:, 1, m)) / N);
        % feature 4: impulse factor
        F(4, m) = max(abs(A(:, 1, m))) / (sum(abs(A(:, 1, m))) / N);
        % feature 5: mean frequency
        % feature 6: root mean square frequency
        % feature 7: standard deviation frequency
        % feature 8: spectrum peak ratio
    end 
end

