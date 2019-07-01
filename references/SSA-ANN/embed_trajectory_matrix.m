%{
    Embed trajectory matrix
    @param x: a signal series (column vector)
    @param L: the window length
    @return X: the trajectory matrix
%}
function X = embed_trajectory_matrix(x, L)
    K = N - L + 1;
    X = zeros(L, K);
    for k=1:K
        X(:, k) = x(k:(K + L -1), :);
    end
end

