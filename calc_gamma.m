function [gamma] = calc_gamma(T, C)
%CALC_GAMMA:    gamma - accommodation coefficient [-]
%               T - temperature [K]
%               C - factor C (C_He=50, C_H2O=3.6, C_air=2.8)
% 
%   Detailed explanation goes here
gamma=1/((10^(0.6-(((1000/T)+1)/C)))+1);
end

