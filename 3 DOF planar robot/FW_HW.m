function P_0_EE = FW_HW(the)
    
    l1 = 1;
    l2 = 1;
    l3 = 1;



    P_0_EE_1 = [ l3*cos(the(1,1) + the(1,2) + the(1,3)) + l1*cos(the(1,1)) + l2*cos(the(1,1) + the(1,2));
               l3*sin(the(1,1) + the(1,2) + the(1,3)) + l1*sin(the(1,1)) + l2*sin(the(1,1) + the(1,2));
               0;
               1];
    P_0_EE_2 = [ l3*cos(the(2,1) + the(2,2) + the(2,3)) + l1*cos(the(2,1)) + l2*cos(the(2,1) + the(2,2));
               l3*sin(the(2,1) + the(2,2) + the(2,3)) + l1*sin(the(2,1)) + l2*sin(the(2,1) + the(2,2));
               0;
               1];
           
    P_0_EE = [P_0_EE_1  P_0_EE_2];
    
           
               

end
