%{
    Envelope Method 2
    @param data: data vector, time domain
    @param dt: sampling time interval
    @param nfilt: size of filter for low pass filtering
    @param lowf: low frequency limit of bandpass filter
    @param highf: high frequency limit of bandpass filter
    @return env: envelope of data
    @return dty: decimated sampling rate
%}
function [env, dty] = envelope2(data, dt, nfilt, lowf, highf)
n = length(data);
dfq = 1/dt/n;
idxLow = floor(lowf / dfq);
idxHi = ceil(highf / dfq);
D = fft(data);
idx = idxHi - idxLow + 1;

D(1:idx) = D(idxLow:idxHi);
D(idx+1:end) = 0;
data = abs(ifft(D));
bw = highf - lowf;
r = fix(a / (bw * 2 * dt));
env = data(1:r:n); % crop the first nfilt elements

dty = dt * r;