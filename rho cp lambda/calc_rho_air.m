function [rho_air] = calc_rho_air(T, p)
%CALC_RHO_ Summary of this function goes here
%   Detailed explanation goes here

% Air - components 21% O2 78%N2 1%Ar

M_air=28.96;
R=8.31446;

if p>=0 && p<=10e5

rho_air = (p*M_air)/(R*T*1000);
    

else 
    rho_air =    'Input Pressure p is outside the permitted value range! ( 0 Pa <= p <= 1e5 Pa)'
end

