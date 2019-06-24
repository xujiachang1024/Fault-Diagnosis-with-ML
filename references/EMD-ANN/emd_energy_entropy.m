%{
    Feature 19
    @param imf: a matrix whose each column is an intrinsic mode function (IMF)
    @param m: the number of the most dominant intrinsic mode functions (IMFs)
    @return normalised_feature: a column vector of normalised energy of IMFs
%}
function normalised_feature = emd_energy_entropy(imf, m)
    % validate $m against the size of $imf
    nrow, ncol = size(imf);
    if ncol < m
        m = ncol;
    end
    % construct a feature vector with the energy as element
    energy = zeros(1, m);
    for i=1:m
        energy(1, i) = sumsqr(imf(:, i));
    end
    % normalise the feature vector, and make it a column vector
    total_energy = sqrt(sumsqr(energy));
    normalised_feature = energy / total_energy;
end
