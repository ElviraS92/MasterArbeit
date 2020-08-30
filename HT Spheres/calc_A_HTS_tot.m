function [A_HTS_tot] = calc_A_HTS_tot(n_1, A_HTS)
%CALC_A_HTS_TOT     n_1 - number of the HTS in the mixture [-]
%                   A_HTS - surface area of one HTS        [m^2]
%   Detailed explanation goes here
A_HTS_tot=n_1*A_HTS;
end

