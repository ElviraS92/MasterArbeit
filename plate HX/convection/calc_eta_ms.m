function [eta_ms] = calc_eta_ms(R, T_ms)
%CALC_ETA_MS 
% T_ms [K]
% eta in P*s
%   Detailed explanation goes here

eta_ms=0.0852*exp(3.51e4/(R*(10^(-3))*T_ms))/1000; % R=8314 J/kmol/K 


end

