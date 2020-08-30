function [alpha_rad] = calc_alpha_rad(C_wbed, T)
%ALPHA_RAD: alpha_rad - radiation term for heat transfer coefficient [W/(m2K)]
%           C_wbed - factor C_w,bed [W/(m2K4)] 
%           T - temperature [K]
%   Detailed explanation goes here

alpha_rad=4*C_wbed*T^3;

end

