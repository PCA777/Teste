clear all
close all
clc

syms rho V_0 R r lambda a C_l C_d omega 

a_prime = (1 - 3*a)/(4*a - 1);

x = sqrt((a*(1 - a))/(a_prime*(1 + a_prime)));

% tan_phi = ((1 - a)*V_0)/((1 + a_prime)*omega*r);
tan_phi = ((1 - a)*V_0)/((1 + a_prime)*x);

dP = ((4*pi*rho*V_0^3)/R)*lambda*a*(1 - a)*r^2*(((C_l/C_d)*tan_phi - 1)/((C_l/C_d)+tan_phi));

sol = simplify(dP);
pretty(sol)

