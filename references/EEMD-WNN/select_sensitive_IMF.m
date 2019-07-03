%{
    Select sensitive IMF after EEMD algoirithm
    @param A: the means of ensemble IMFs (N, I_imf, M)
    @param faulty: the boolean value which indicates whether the bearings
    are faulty
    @return A_sensitive: the sensitive IMF
%}
function [A_sensitive, i_min] = select_sensitive_IMF(A, faulty)
    % N: the number of data points in each sample
    % I_imf: the number of IMFs
    % M: the number of samples
    [N, I_imf, M] = size(A);
    % compute the kurtosis values of IMFs
    k = zeros(I_imf, M);
    for i=1:I_imf
        for m=1:M
            k(i, m) = kurtosis(A(:, i, m));
        end
    end
    % compute the mean of kurtosis values of IMFs
    k_avg = mean(k, 2);
    % compute the standard deviation of kurtosis values of IMFs
    k_std = std(k, 0, 2);
    % compute the criterion
    if faulty
        f = k_std ./ k_avg;
    else
        f = k_avg .* k_std;
    end
    % select the sensitive IMF
    [~, i_min] = min(f);
    A_sensitive = A(:, i_min, :);
end

