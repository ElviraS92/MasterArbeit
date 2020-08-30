function [k_p] = calc_k_p(lambda_p, lambda_f)
% % calc_porosity:  k_p - relative heat conductivity of particles                   [-]
%                   lambda_p - heat conductivity of particles                       [W/(mK)]
%                   lambda_f - heat conductivity of the fluid in the void spaces    [W/(mK)]

%   Calculation of the relative heat conductiovity of particles
k_p = lambda_p/lambda_f;

end

