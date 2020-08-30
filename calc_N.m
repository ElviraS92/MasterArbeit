function [N] = calc_N(k_G, k_rad, k_p, B)
%calc_porosity: N - factor N [-]; k_bed - relative heat conduction of particle bed [-]; k_p - density of the solid/particle [kg/m3]
%   Calculation of N
N = (1/k_G)*(1+((k_rad-B*k_G)/k_p)) - B*(1/k_G-1)*(1+k_rad/k_p);
end

