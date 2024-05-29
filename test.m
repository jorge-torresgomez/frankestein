S=vpasolve([R_sym==cte_R*mu*l_v/pi/r_v^4, ...
            L_sym==cte_L*rho*l_v/pi/r_v^2], ...
            [l_v,r_v]);
mu_b=0.04;%blood viscosity according to [3, Tab. 1]
rho_b=1.05;%blood density according to [3, Tab. 1]
E=4*10^6;%vessel Young's modulus according to [3, Tab. 1]

ans_lv_Noor=(subs(S.l_v(3),[R_sym L_sym mu rho cte_R cte_L],[R(18)+R(14)+R(15)+R(16)+R(17) L(18)+L(14)+L(15)+L(16)+L(17) mu_b rho_b 8 9/4]));