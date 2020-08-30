function [alpha_WP] = calc_alpha_WP(lambda_f, l, d, delta_p)
%CALC_ALPHA_WP: lambda_f - heat conductivity of the fluid phase in the void spaces [W/(mK)];
%               l - modified mean free path of gas molecules [-]
%               d - particle size [m]
%               delta - particle surface roughness  [m]
%   Detailed explanation goes here
alpha_WP=(4*lambda_f/d)*((1+(2*(l+delta_p)/d))*log(1+(d/(2*(l+delta_p))))-1);

end

