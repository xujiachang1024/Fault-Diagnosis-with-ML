%{
    EEMD algorithm: generate ensemble IMFs
    @param x: a noise series
    @param E: the number of ensemble
    @param I: the number of intrinsic mode functions (IMFs)
    @return a: the means of each of the IMFs
    @return f: a column vector of normalised energy of IMFs
%}
function [a, f] = generate_ensemble_IMF(x, E, I)
    % N: the number of data points in each sample
    [N, ~] = size(x);
    % initialise the IMF matrix
    imf = zeros(N, I, E);
    % for each ensemble
    for m=1:E
        % add a different white noise series $n_m with the given amplitude to the investigate signal $x
        n_m = randn(size(x)) / 100;
        x_m = x + n_m;
        % decompose the noise-added signal $x_m into I IMFs
        [imf(:, :, E), ~] = emd(x_m, 'MaxNumIMF', I);
    end
    % calculate the ensemble mean of the M trials for each IMF
    a = zeros(N, I);
    for i=1:I
        a(:, i) = mean(imf(:, i, :), 3);
    end
    % construct a column vector with the energy as element
    e = zeros(I, 1);
    for i=1:I
        e(i, :) = sumsqr(a(:, i));
    end
    % normalise the feature vector, and make it a column vector
    total = sqrt(sumsqr(e));
    f = e / total;
end
