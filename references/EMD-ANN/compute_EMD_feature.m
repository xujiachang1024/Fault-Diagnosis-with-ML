%{
    Feature 19
    @param x: a singal series
    @param m: the number of the most dominant intrinsic mode functions (IMFs)
    @return f: a column vector of normalised energy of IMFs
%}
function f = compute_EMD_feature(x, m)
    % compute IMFs using emipirical mode decomposition
    [imf, ~] = emd(x);
    % validate $m against the number of IMFs $n
    [~, n] = size(imf);
    if n < m
        m = n;
    end
    % construct a column vector with the energy as element
    e = zeros(m, 1);
    for i=1:m
        e(i, :) = sumsqr(imf(:, i));
    end
    % normalise the feature vector, and make it a column vector
    total = sqrt(sumsqr(e));
    f = e / total;
end
