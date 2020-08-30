function [l] = calc_l(gamma, R, T, M, lambda_f, p, c_pg)
%CALC_L     l - modified mean free path of gas molecules [-]
%           gamma - accommodation coefficient [-]
%           R - gas constant [J/(kmol K)]
%           T - temperature [K]
%           M - molar mass of fluid/gas
%           lambda_f - heat conductivity of the fluid phase in the void spaces [W/(mK)];
%           p - pressure [Pa]
%           c_pg - specific heat capacity [J/(kgK)];

%   Detailed explanation goes here

l=2*((2-gamma)/gamma)*sqrt((pi*2*R*T)/M)*(lambda_f/(p*((2*c_pg)-(R/M))));


end

