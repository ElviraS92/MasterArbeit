function [phi_HTS] = calc_phi_HTS(A_proj, A_HTS, N_c12)
%CALC_PHI_HTS:      phi_HTS - surface coverage factor                                       [-]
%                   A_proj - projected surface area of particles on hts                     [m^2]
%                   A_HTS - surface area of the HTS                                         [m^2]
%                   N_c12 (n_contact) - number of particles in direct contact with a hts    [-]
%   Detailed explanation goes here
phi_HTS=A_proj*N_c12/A_HTS;

end

