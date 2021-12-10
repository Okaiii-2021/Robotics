clc;
close all;


% plot([0;3],[0;0] ,':yo','linewidth' ,2)
% 


for i = 1:5:length(out.x)
    plot([0;1+ out.x(i)], [0;0], ':bo', 'linewidth', 2);
    xlim([-0.3 2])
    ylim([-0.5 0.5])
    grid on;
    pause(0.2);
end



