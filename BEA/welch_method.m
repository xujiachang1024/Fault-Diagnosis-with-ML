%{
    Welch's Method for the Calculation of Spectrum
    @param x: time domain data
    @param windln: window length, e.g. 2048
    @param Fs: sampling frequency
    @param noverlap: length of the overlap
    @return Spec: vector spectrum
    @return freq: corresponding frequency
%}
function [Spec, freq] = psde(x, winln, Fs, noverlap)
m = windln / 2;
window = 0.5 * (1 - cos(2 * pi * (1:m)' / (windln + 1))); % Hann window
window = [window; window(end:-1:1)];
window = window(:);

nfft = length(window);

n = length(x); % number of data points
nwind = length(window); % length of window
if n < nwind % zero-pad x if it has length less than the window length
    x(nwind) = 0;
    n = nwind;
end
x = x(:); % convert x into a column vector

k = fix((n - noverlap) / (nwind - noverlap)); % number of windows
index = 1:nwind;
% KMU = norm(k * window) ^ 2; % normalize scale factor (asymptotically unbiased)
KMU = k * sum(window) ^ 2 % normalize scale factor (peaks are about right)

Spec = zeros(nfft, 1);
for i = 1:k
    xw = window .* detrend(x(index));
    index = index + (nwind - noverlap);
    xx = fft(xw, nfft);
    Xx = abs(xx) .^ 2;
    Spec = Spec + Xx;
end

% select the first half
if ~any(any(imag(x ~= 0)) % if x is not complex
    if rem(nfft, 2) % if nfft is odd
        select = (1:(nfft+1)/2)';
    else
        select = (1:nfft/2)';
    end
else
    select = (1:nfft)';
end
freq = (select - 1) * Fs / nfft;

% find confidence interval if needed
Spec = sqrt(Spec * (4 / KMU)); % normalize: ow in energy vs power
