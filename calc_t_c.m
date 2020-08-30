function [t_c] = calc_t_c(rho_bed, lambda_bed, c_bed, alpha_WS)
%CALC_T_C Summary of this function goes here
%   Detailed explanation goes here

t_c=(4*rho_bed*lambda_bed*c_bed)/(pi*(alpha_WS)^2);

end

