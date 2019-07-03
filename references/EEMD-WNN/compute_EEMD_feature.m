%{
    EEMD algorithm
    @param x: a noise series
    @param M_ens: the number of ensemble
    @param I_imf: the number of intrinsic mode functions (IMFs)
    @return a: the means of each of the IMFs
    @return f: a column vector of normalised energy of IMFs
%}
function [a, f] = compute_EEMD_feature(x, M_ens, I_imf)
    [N, ~] = size(x);
    imf = zeros(N, I_imf, M_ens);
    for m=1:M_ens
        % add a different white noise series $n_m with the given amplitude to the investigate signal $x
        n_m = randn(size(x)) / 100;
        x_m = x + n_m;
        % decompose the noise-added signal $x_m into I IMFs
        [imf(:, :, M_ens), ~] = emd(x_m, 'MaxNumIMF', I_imf);
    end
    % calculate the ensemble mean of the M trials for each IMF
    a = zeros(N, I_imf);
    for i=1:I_imf
        a(:, i) = mean(imf(:, i, :), 3);
    end
    % construct a column vector with the energy as element
    e = zeros(I_imf, 1);
    for i=1:I_imf
        e(i, :) = sumsqr(a(:, i));
    end
    % normalise the feature vector, and make it a column vector
    total = sqrt(sumsqr(e));
    f = e / total;
end
