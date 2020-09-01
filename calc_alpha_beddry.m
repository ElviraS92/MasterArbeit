function [alpha_beddry_mean, alpha_beddry_t_res] = calc_alpha_beddry(rho_bed, lambda_bed, c_bed, t_res, t_c)
%CALC_ALPHA_BEDDRY: alpha_beddry - heat transfer coefficient for a dry particle bed [W/(m2K)]
%                   rho_bed - bulk density [kg/m3]
%                   lambda_bed - heat conductivity of partcile bed [W/(mK)]
%                   c_bed - specific heat capacity of particle bed [J/(kgK)]
%                   t - residence time [s]
%   Detailed explanation goes here

alpha_beddry_t_res=(2*1/sqrt(pi))*(sqrt(rho_bed*lambda_bed*c_bed)/sqrt(t_res));
fun=@(t) (2.*1./sqrt(pi))*(sqrt(rho_bed.*lambda_bed.*c_bed)./sqrt(t));

alpha_beddry_mean= (integral(fun, t_c, t_res))/(t_res-t_c);

%Backup
% alpha_beddry_t_res=(2*1/sqrt(pi))*(sqrt(rho_bed*lambda_bed*c_bed)/sqrt(t));
% % 
% alpha_beddry_mean= integral((2*1/sqrt(pi))*(sqrt(rho_bed*lambda_bed*c_bed)/sqrt(t)), 0.001, t)/t;

end

