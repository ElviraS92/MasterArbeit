function [lambda_Al2O3] = calc_lambda_Al2O3(T)
%CALC_LAMBDA_AL2O3 Summary of this function goes here
%   http://www-ferp.ucsd.edu/LIB/PROPS/PANOS/al2o3.html

if T>=298 && T<=1600
    
A1=85.868;
B1=-0.22972;
C1=2.607e-4;
D1=-1.3607e-7;
E1=2.7092e-11;


lambda_Al2O3= A1 + B1*T + C1*T^2 + D1*T^3 + E1*T^4;

else 
    cp_Al2O3 =    'Input Temperature T is outside the permitted value range! (298 K <= T <= 1600 K)'

end

end

