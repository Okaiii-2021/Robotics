% draw 2 dof robot
clc;
close all;


% plot([0;3],[0;0] ,':yo','linewidth' ,2)
% 


for i = 1:5:length(out.the1)
    plot([0; cos(out.the1(i))], [0;sin(out.the1(i))], '-ro',...
          [cos(out.the1(i)); cos(out.the1(i)) + cos(out.the1(i) + out.the2(i))], [sin(out.the1(i)); sin(out.the1(i)) + sin(out.the1(i) + out.the2(i))] ,...
              '-bo', 'linewidth', 2);
    xlim([-2 2])
    ylim([-2 2])
    grid on;
    pause(0.1);
end