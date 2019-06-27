clear;
load('data/interim/MFPT/or_faults_vload.mat');
loads = [25 50 100 150 200 250 300];
% get the length of signal N, and the number of samples M
[N, M] = size(x);
t = [1:N];
figure();hold on
for m=1:M
    subplot(M, 1, m);
    plot(t, x(:, m)');
    pbaspect([80 1 1]);
%     set(gca,'LooseInset',get(gca,'TightInset'));
    title(strcat('Vibration Signal of MFPT Outer Race Fault #', num2str(m), ', load=', num2str(loads(m))));
    xlabel('t');
    ylabel('x(t)');
    ylim([-5 5]);
end