function [d_fic] = calc_d_fic(d_HTS, d_p)
%CALC_D_FIC:    d_fic - fictional diameter of a fictional sphere (calculation of projected surface area) [m]
%               d_HTS - d_HTS - diameter of the HTS                                                      [m]
%               d_p   - particle diameter (CaCO3 or CaO)                                                 [m]
%   Detailed explanation goes here
d_fic=d_HTS+d_p;
end

