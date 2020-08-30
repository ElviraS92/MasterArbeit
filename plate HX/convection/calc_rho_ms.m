function [rho_ms] = calc_rho_ms(T_ms)
%CALC_RHO_MS Summary of this function goes here
%   Detailed explanation goes here

rho_ms=(2.27-4.34e-4*(T_ms-273.15))*1000;

end

