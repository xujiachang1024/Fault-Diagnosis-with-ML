%{
    EEMD algorithm
    @param x: the column vector of the original, noise-added signal
    @param M: the number of ensemble
    @param I: the number of intrinsic mode functions (IMFs)
    @return a: the means of each of the IMFs
%}
function a = EEMD(x, M, I)
    T, ncol = size(x);
    imf = zeros(T, I, M);
    for m=1:M
        % add a different white noise series $n_m with the given amplitude to the investigate signal $x
        x_m = x + n_m;
        % decompose the noise-added signal $x_m into I IMFs
        imf(:, :, M), residual = emd(x_m, 'MaxNumIMF', I);
    end
    % calculate the ensemble mean of the M trials for each IMF
    a = zeros(T, I);
    for i=1:I
        a(:, i) = mean(imf(:, i, :), 3);
    end
end
