function [k_tot] = calc_k_tot(alpha_conv, alpha, delta_mat, lambda_mat)
%CALC_K_TOT k_tot - heat transfer coefficient [W/(m^2K)]
%   Detailed explanation goes here

k_tot=1/((1/alpha_conv)+(delta_mat/lambda_mat)+(1/alpha)); 

end

