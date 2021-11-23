%%% draw the pendulum_3


clc; 
close all;
l1 = 1;
l2 = 1;


the1 = out.the1(:);
the2 = out.the2(:);
t = out.time;

for i = 1:3:length(t)
    plot3( [0;0], [0; 0] ,[-1.3;0], "-bO", ...
           [0; -l1*sin(the1(i))], [0; l1*cos(the1(i))] ,[0;0], "-rO",...
           [-l1*sin(the1(i)); l2*cos(the1(i))*cos(the2(i)) - l1*sin(the1(i))], [l1*cos(the1(i)); l1*cos(the1(i)) + l2*cos(the2(i))*sin(the1(i))] ,[0;-l2*sin(the2(i))], "-bO", 'linewidth', 3);
            
    
   
    
    xlim([-3  3]);
    ylim([-3  3]);
    zlim([-1.3  3]);
    
    grid on;
    
    
    pause(0.2);
    
end
% 
%   plot3( [0;0], [0; 0] ,[-1.3;0], "-bO", ...
%            [0; cos(the1(i))], [0; sin(the1(i))] ,[0;0], "-rO",...
%            [cos(the1(i)); cos(the1(i))], [sin(the1(i)); -cos(the2(i))] ,[0;-sin(the2(i))], "-bO", 'linewidth', 3);


