%{
    EEMD algorithm
    @param x: a noise series
    @param M: the number of ensemble
    @param I: the number of intrinsic mode functions (IMFs)
    @return a: the means of each of the IMFs
%}
function a = compute_EEMD_feature(x, M, I)
    [T, ~] = size(x);
    imf = zeros(T, I, M);
    for m=1:M
        % add a different white noise series $n_m with the given amplitude to the investigate signal $x
        x_m = x + n_m;
        % decompose the noise-added signal $x_m into I IMFs
        [imf(:, :, M), ~] = emd(x_m, 'MaxNumIMF', I);
    end
    % calculate the ensemble mean of the M trials for each IMF
    a = zeros(T, I);
    for i=1:I
        a(:, i) = mean(imf(:, i, :), 3);
    end
end
