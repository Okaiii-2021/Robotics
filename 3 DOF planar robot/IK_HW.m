function the = IK_HW(P_0_EE , the_EE)
    
    l1 = 1; 
    l2 = 1;
    l3 = 1;
    
    x = P_0_EE(1);
    y = P_0_EE(2);
    
    
    a = x - l3*cos(the_EE);
    b = y - l3*sin(the_EE);
        

    c2 = (a*a + b*b - l1*l1 - l2*l2)/ (2*l1*l2);
    
    s2_1 = sqrt(1 - c2*c2);
    s2_2 = -sqrt(1- c2*c2);
    
    the2_1 = atan2(s2_1, c2);
    the2_2 = atan2(s2_2, c2);
    
    
    %%% the2
    the2 = [the2_1; the2_2];
    
    i = l1 + l2*cos(the2);
    z = l2*sin(the2);
    
   
    e = i.^2 + z.^2;
    
    gama_1 = atan2(z(1)/e(1), i(1)/e(1));
    
    gama_2 = atan2(z(2)/e(2), i(2)/e(2));
    
    the1_1 = atan2(b/e(1), a/e(1)) - gama_1;
    
    the1_2 = atan2(b/e(2), a/e(2)) - gama_2;
    
    
    the1 = [the1_1; the1_2];
    
    
    the3 = the_EE - the1 - the2;
    
    
    the = [the1 the2 the3];
    
    
    
    
    
    
   

end