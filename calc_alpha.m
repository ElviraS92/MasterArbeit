function [alpha_integral, alpha_mean] = calc_alpha(alpha_WS, rho_bed, lambda_bed, c_bed, t_res)
%CALC_ALPHA        alpha        - overall heat transfer coefficient for a stationary particle bed   [W/(m^2 K)]
%                  alpha_WS     - heat transfer coefficient heat exchanger wall to particle bed     [W/(m^2 K)]
%                  alpha_beddry - heat transfer coefficient for a dry particle bed                  [W/(m^2 K)]
%   Schlünder

% alpha=1/((1/alpha_WS)+(1/alpha_beddry));

fun=@(t) 1./((1./alpha_WS)+(1./((2.*1./sqrt(pi))*(sqrt(rho_bed.*lambda_bed.*c_bed)./sqrt(t)))));

alpha_integral= (integral(fun, 0.001, t_res));
alpha_mean=alpha_integral/t_res;
% alpha_beddry_t_res=(2*1/sqrt(pi))*(sqrt(rho_bed*lambda_bed*c_bed)/sqrt(t_res));
end

