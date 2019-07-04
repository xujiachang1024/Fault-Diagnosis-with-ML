%{
    Select sensitive IMF after EEMD algoirithm
    @param A: A_sensitive: the sensitive IMF (N, 1, M)
    @return 
%}
function F = extract_EEMD_feature(A_sensitive)
    % N: the number of data points in each sample
    % M: the number of samples
    [N, ~, M] = size(A_sensitive);
    F = zeros(10, M);
    for m=1:M
        % feature 1: standard deviation
        F(1, m) = std(A_sensitive(:, 1, m));
        % feature 2: kurtosis
        F(2, m) = kurtosis(A_sensitive(:, 1, m));
        % feature 3: shape factor
        % feature 4: impulse factor
        % feature 5: mean frequency
        % feature 6: root mean square frequency
        % feature 7: standard deviation frequency
        % feature 8: pectrum peak ratio
    end 
end

