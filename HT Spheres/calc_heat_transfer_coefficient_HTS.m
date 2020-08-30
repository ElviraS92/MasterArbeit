function [alpha, alpha_WS, alpha_beddry, alpha_WP, N_c12] = calc_heat_transfer_coefficient_HTS(T, C, R, M, lambda_f, p, c_pg, rho_HTS_bed, rho_HTS_solid, d_HTS, d_p, sigma, epsilon_HTS, epsilon_bed, delta_p, rho_p_bed, lambda_bed, c_bed, t)
%CALC_ALPHA Summary of this function goes here
%   Detailed explanation goes here




%calc_values
gamma=calc_gamma(T, C);
l=calc_l(gamma, R, T, M, lambda_f, p, c_pg);

psi_HTS=calc_psi_HTS(rho_HTS_bed, rho_HTS_solid);

%contact between spheres an particles
d_fic=calc_d_fic(d_HTS, d_p);
h_fic=calc_h_fic(d_fic, d_p);
A_fic=calc_A_fic(h_fic, d_fic);
A_proj=calc_A_proj(d_HTS, d_fic, A_fic);
A_HTS=calc_A_HTS(d_HTS);
N_c11=calc_N_c11(psi_HTS);
N_c12=calc_N_c12(d_p, d_HTS, N_c11);

phi_HTS=calc_phi_HTS(A_proj, A_HTS, N_c12);

%heat transfer coefficients
C_wbed=calc_C_wbed(sigma, epsilon_HTS, epsilon_bed);
alpha_rad=calc_alpha_rad(C_wbed, T);
alpha_WP=calc_alpha_WP(lambda_f, l, d_p, delta_p);

%outputs
alpha_beddry=calc_alpha_beddry(rho_p_bed, lambda_bed, c_bed, t);
alpha_WS=calc_alpha_WS(phi_HTS, alpha_WP, alpha_rad);
alpha=calc_alpha(alpha_WS, alpha_beddry);

end

