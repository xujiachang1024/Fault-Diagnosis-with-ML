%{
    Extract EEMD features from the sensitive IMF
    @param A: the sensitive IMF, size=(N, 1, M)
    @param sf: the sampling frequency
    @param z: the z-score threshold to filter underlying frequencies
    @return F: the feature matrix, size=(7, M)
%}
function F = extract_EEMD_feature(A, sf, z)
    % N: the number of data points in each sample
    % M: the number of samples
    [N, ~, M] = size(A);
    % initialise the feature matrix
    F = zeros(7, M);
    % extract the feature vector for each sample
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
        F(5, m) = compute_mean_frequency(A(:, 1, m), sf, z);
        % feature 6: root mean square frequency
        F(6, m) = compute_root_mean_square_frequency(A(:, 1, m), sf, z);
        % feature 7: standard deviation frequency
        F(7, m) = compute_standard_deviation_frequency(A(:, 1, m), sf, z);
    end 
end

