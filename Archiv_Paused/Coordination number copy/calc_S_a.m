function [S_a] = calc_S_a(S_p, d_HTS, d_p)
%CALC_S_A:  S_a - fractional area of particle type 2 in a binary particle mixture, refers to small particles, here bed particles (CaO or CaCO3) [-]
%           S_p - fractional number of particle 2 in a binary particle mixture, refers to small particles, here bed aprticles (CaO or CaCO3) [-]
%           d_HTS - diameter of particle type 1, alarge particle, here HTS [m]
%           d_p - diameter of particle type 2, small particles, here bed particles (CaO or CaCO3) [m]
%   Detailed explanation goes here

S_a=S_p/(S_p+(d_HTS/d_p)^2*(1-S_p));

end

