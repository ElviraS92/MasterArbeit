function [k_rad] = calc_k_rad(sigma, epsilon_p, T, d, lambda_f)
%CLACL_K_RAD:   k_rad - radiation term for relative heat conductivity [-];
%               sigma - Stefan-Boltzmann constant [W/(m2K4)]
%               epsilon - emissivity [-]
%               T - temperature [K]
%               d - particle size [m]
%               lambda_f - heat conductivity of the fluid phase in the void spaces [W/(mK)];
% 
%   Calculation of k_rad
k_rad=(4*sigma)/((2/epsilon_p)-1)*T^3*d/lambda_f;

end

