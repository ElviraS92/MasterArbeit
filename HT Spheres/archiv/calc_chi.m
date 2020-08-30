function [chi] = calc_chi(X_d, Y_V)
%CALC_CHI Summary of this function goes here
% Selbsterfundener Zusammenhang!!!! TEST

a=9.3576e-1;
b=4.6663e-2;
c=-1.7470;
d=-4.6544e-3;
e=1.962e-1;
f=2.4389;
g=-1.2745e-1;
h=-1.9551;


chi=a + b*X_d + c*Y_V + d*X_d^2 + e*X_d*Y_V + f*Y_V^2 + g*X_d*Y_V^2 + h*Y_V^3;


end

