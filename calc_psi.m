function [psi] = calc_psi(rho_p, rho_bed)
%calc_porosity: psi - porosity [-]; rho_bed - density of particle bed [kg/m3]; rho_p - density of the solid/particle [kg/m3]
%   Calculation of porosity
psi = 1-rho_bed/rho_p;

end

