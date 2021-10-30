clc;
clear all;
close all;


syms the1 the2 the3 l1 l2 l3;

%  1.5708    1.5708   -0.0000
%     3.1416   -1.5708    1.5708

the1 = 3.1416;
the2 = -1.5708;
the3 = 1.5708;   ,
l1 = 1;
l2 = 1;
l3 = 1;




% DH-table
DH = [ 0    0    0    the1;
       l1   0    0    the2;
       l2   0    0    the3];
   

T_0_i  =  eye(4);  

T_0_n  =  zeros(4,4,3);
   
for i = 1:3,
    
    ci = cos(DH(i,4));
    si = sin(DH(i,4));
    canpi_1 = cos(DH(i,2));
    sanpi_1 = sin(DH(i,2));
    ai_1 = DH(i,1);
    di = DH(i,3);
    
    
    T_i_1_i = [ ci            -si          0           ai_1;
                si*canpi_1    ci*canpi_1   -sanpi_1    -sanpi_1*di;
                si*sanpi_1    ci*sanpi_1   canpi_1     canpi_1*di;
                0             0            0           1];
    
            
    T_0_i = T_0_i * T_i_1_i;
    
    T_0_n(:,:,i) = T_0_i;
end
   
    P_3_EE = [l3; 0; 0; 1];
    
    P_0_EE = T_0_i * P_3_EE 
    
    
    
    
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % PLOT CONFIGURATION
   
    
plot3([0;T_0_n(1,4,2)],              [0;T_0_n(2,4,2)],                [0;T_0_n(3,4,2)], "-bO",....
      [T_0_n(1,4,2);T_0_n(1,4,3)],   [T_0_n(2,4,2);T_0_n(2,4,3)],     [T_0_n(3,4,2);T_0_n(3,4,3)], "-kO",....
      [T_0_n(1,4,3);P_0_EE(1)],      [T_0_n(2,4,3);P_0_EE(2)],        [T_0_n(3,4,3);P_0_EE(3)], "-rO",...
      'linewidth', 3);
  hold on; 
  
  xlabel("x");
  zlabel("z");
  ylabel("y");
  
  xlim([-3;3]);
  ylim([-3;3]);
  zlim([-1;1]);
  grid on ;
  
  
  %  1.5708    1.5708   -0.0000
%     3.1416   -1.5708    1.5708

% the1 = 1.5708;
% the2 = 1.5708;
% the3 = 0;
% l1 = 1;
% l2 = 1;
% l3 = 1;
% 
% 
% 
% 
% % DH-table
% DH = [ 0    0    0    the1;
%        l1   0    0    the2;
%        l2   0    0    the3];
%    
% 
% T_0_i  =  eye(4);  
% 
% T_0_n  =  zeros(4,4,3);
%    
% for i = 1:3,
%     
%     ci = cos(DH(i,4));
%     si = sin(DH(i,4));
%     canpi_1 = cos(DH(i,2));
%     sanpi_1 = sin(DH(i,2));
%     ai_1 = DH(i,1);
%     di = DH(i,3);
%     
%     
%     T_i_1_i = [ ci            -si          0           ai_1;
%                 si*canpi_1    ci*canpi_1   -sanpi_1    -sanpi_1*di;
%                 si*sanpi_1    ci*sanpi_1   canpi_1     canpi_1*di;
%                 0             0            0           1];
%     
%             
%     T_0_i = T_0_i * T_i_1_i;
%     
%     T_0_n(:,:,i) = T_0_i;
% end
%    
%     P_3_EE = [l3; 0; 0; 1];
%     
%     P_0_EE = T_0_i * P_3_EE 
%     
%     
%     
%     
%     
%     
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     % PLOT CONFIGURATION
%    
%     
% plot3([0;T_0_n(1,4,2)],              [0;T_0_n(2,4,2)],                [0;T_0_n(3,4,2)], "-bO",....
%       [T_0_n(1,4,2);T_0_n(1,4,3)],   [T_0_n(2,4,2);T_0_n(2,4,3)],     [T_0_n(3,4,2);T_0_n(3,4,3)], "-kO",....
%       [T_0_n(1,4,3);P_0_EE(1)],      [T_0_n(2,4,3);P_0_EE(2)],        [T_0_n(3,4,3);P_0_EE(3)], "-rO",...
%       'linewidth', 3);
  
  
  
  
    
    
 
    
    
    
   
   
