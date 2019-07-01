%{
    Singular value decomposition in singular spectrum analysis
    @param X: a L*K trajectory matrix
    @return 
%}
function SV = singular_value_decomposition(X)
    % generate an L*L matrix
    S = X * X';
    % compute the eigens
    [eigenvector, eigenvalue] = eig(S);
    % vectorise the eigenvalues
    eigenvalue = diag(eigenvalue);
    % sort the eigenvalues
    [eigenvalue, sorted] = sort(eigenvalue, 'descend');
    % sort the eigenvectors
    eigenvector = eigenvector(:, sorted);
    % the number of eigens
    d = size(eigenvector, 2);
    for j=1:d
        V(:, j) = X' * (eigenvector(:, j) / sqrt(eigenvalue(j, j)));
    end
    L = size(X, 1);
    SV = zeros(L, 1);
    for j=1:d
        SV = SV + sqrt(eigenvalue(j, j)) * eigenvector(:, j) * V(:, j)';
    end
end

