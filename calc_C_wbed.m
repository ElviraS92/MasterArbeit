function [C_wbed] = calc_C_wbed(sigma, epsilon_w, epsilon_bed)
%CALC_C_WBED:   C_wbed - factor C_w,bed [W/(m2K4)]
%               sigma - Stefan-Boltzmann constant [W/(m2K4)]
%               epsilon_w - emissivity of the HeatX wall [-]
%               epsilon_bed - emissivity of the particle bed [-]
%   Detailed explanation goes here

C_wbed=sigma/(1/epsilon_w + 1/epsilon_bed - 1);

end

