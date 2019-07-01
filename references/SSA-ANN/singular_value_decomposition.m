%{
    Singular value decomposition in singular spectrum analysis
    @param X: a L*K trajectory matrix
    @return eigenvalue
    @return eigenvector
%}
function [eigenvalue, eigenvector] = singular_value_decomposition(X)
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
end

