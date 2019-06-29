clear;
bac = {};
dec = {};
fec = {};

load('data/interim/CWRU/b_faults_d12.mat')
if exist('ba','var') == 1
    for i=1:size(ba, 2)
        bac{size(bac, 2) + 1} = ba{i};
    end
end
if exist('de','var') == 1
    for i=1:size(de, 2)
        dec{size(dec, 2) + 1} = de{i};
    end
end
if exist('fe','var') == 1
    for i=1:size(fe, 2)
        fec{size(fec, 2) + 1} = fe{i};
    end
end
clearvars -except bac dec fec;

load('data/interim/CWRU/b_faults_d48.mat')
if exist('ba','var') == 1
    for i=1:size(ba, 2)
        bac{size(bac, 2) + 1} = ba{i};
    end
end
if exist('de','var') == 1
    for i=1:size(de, 2)
        dec{size(dec, 2) + 1} = de{i};
    end
end
if exist('fe','var') == 1
    for i=1:size(fe, 2)
        fec{size(fec, 2) + 1} = fe{i};
    end
end
clearvars -except bac dec fec;

load('data/interim/CWRU/b_faults_fan.mat')
if exist('ba','var') == 1
    for i=1:size(ba, 2)
        bac{size(bac, 2) + 1} = ba{i};
    end
end
if exist('de','var') == 1
    for i=1:size(de, 2)
        dec{size(dec, 2) + 1} = de{i};
    end
end
if exist('fe','var') == 1
    for i=1:size(fe, 2)
        fec{size(fec, 2) + 1} = fe{i};
    end
end
clearvars -except bac dec fec;

data_sink_path = 'data/interim/CWRU/b_faults_combined.mat';
save(data_sink_path, 'bac', 'dec', 'fec');