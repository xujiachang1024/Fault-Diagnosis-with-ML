%{
    Envelope Method 1
    @param data: data vector, time domain
    @param dt: sampling time interval
    @param nfilt: size of filter for low pass filtering
    @param lowf: low frequency limit of bandpass filter
    @param highf: high frequency limit of bandpass filter
    @return env: envelope of data
    @return dty: decimated sampling rate
%}
function [env, dty] = envelope1(data, dt, nfilt, lowf, highf)
c = (lowf + highf) / 2; % center of frequency limit of bandpass filter
if 1/dt/2 < c
    y = [];
    dt = [];
else
    ndata = length(data);
    z = data(:) .* exp(-2 * pi * li * c * dt * (0:ndata-1)');
    bw = highf - lowf;
    b = fir1(nfilt, bw * dt);
    x = filter(b, 1, z);
    r = fix(1 / (bw * 2 * dt));
    env = abs(x(nfilt+1:r:data)); % crop the first nfilt elements
    dty = dt * r;
end