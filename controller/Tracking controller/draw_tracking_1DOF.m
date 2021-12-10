clc;
close all;


% plot([0;3],[0;0] ,':yo','linewidth' ,2)
% 


for i = 1:5:length(out.the)
    plot([0;cos(out.the(i))], [0;sin(out.the(i))], ':bo', 'linewidth', 2);
    xlim([-2 2])
    ylim([-2 2])
    grid on;
    pause(0.2);
end