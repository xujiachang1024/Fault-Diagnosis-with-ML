%{
    Spectral Kurtois Agorithm
    @param v: time domain values
    @param sr: sample rate
    @return S: Kurtogram
%} 
function S = SpecKurt(v, sr)
lvl = [2 3 4 6 8 12 16 32]; % octave levels
lw = 1000; % lowest indow frequency value
hi = sr / 2; % Nyquest
n = length(lvl);
S = zeros(n, 32);
for i = 1:n
    cLvl = lvl(i); % current octave level
    dBw = (hi - lw) / cLvl;
    cLw = lw; % current lowest window frequency value
    dix = floor(32 / cLvl) % difference between indices
    sdix = 1; % starting 
    edix = dix; % ending
    for j = 1:cLvl
        cHi = cLw + dBw;
        [y, dt] = envhetsv(v, 1/sr, 128, cLw, cHi);
        [P, frq] = psde(y, 4096, 1/dt, 2048);
        sk = kurtosis(P);
        idx = sdix:edix;
        S(i, idx) = sk;
        sdix = edix + 1;
        edix = edix + dix;
        cLw = cLw + dBw;
    end
end

fq = linespace(lw, hi, 32);
surf(fq, 1:8, S);
axis([fq(1) fq(end) 1 8 ])
colorbar