function [N_c12, psi_HTS] = calc_N_c12_for_n_HTS_max(rho_HTS_solid, rho_HTS_bed, d_p, d_HTS)
%CALC_N_C12_FOR_N_HTS_MAX Summary of this function goes here
%   Detailed explanation goes here

psi_HTS=calc_psi(rho_HTS_solid, rho_HTS_bed);
N_c11=calc_N_c11(psi_HTS);
N_c12=calc_N_c12(d_p, d_HTS, N_c11);

end

