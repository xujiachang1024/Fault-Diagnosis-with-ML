%{
    Compute principal compoenents in singular spectrum analysis
    @param X: a L*K trajectory matrix
    @param eigenvector
    @return PC: the principal components
%}
function PC = compute_principal_components(X, eigenvector)
    PC = X * eigenvector;
end

