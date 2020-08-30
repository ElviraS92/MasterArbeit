function [psi_HTS] = calc_psi_HTS(rho_HTS_bed, rho_HTS_solid)
%CALC_PSI_HTS          psi_HTS       - porosity for a one component bed of HTS [-]
%                      rho_HTS_bed   - bulk density for HTS                    [kg/m^3]
%                      rho_HTS_solid - density of HTS (solid properties)       [kg/m^3]
%   Detailed explanation goes here

psi_HTS=1-(rho_HTS_bed/rho_HTS_solid);

end

