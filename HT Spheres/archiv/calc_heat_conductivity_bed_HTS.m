function [lambda_bed] = calc_heat_conductivity_bed_HTS()
% % calc_heat_conductivity: lambda_bed - heat conductivity of the particle bed [W/(mK)];
%                           k_bed - relative heat conductivity of the particle bed [-];
%                           lambda_f - heat conductivity of the fluid phase in the void spaces [W/(mK)];
% 
%   Calculation of lambda_bed

% CONVERSION OF VARIABLES

% temperatures
theta_m=(theta_bedin+theta_HTS)/2;

T_m=convert_theta2T(theta_m);
T_bedin=convert_theta2T(theta_m);
T_HTS=convert_theta2T(theta_HTS);

% porosity
psi=calc_porosity(rho_p, rho_bed);

% heat capacity of particle bed (c_bed~=c_solid)
c_bed=lookup_cp(theta_m, table_cp);



% % CALCULATION OF PARTICLE BED HEAT CONDUCTIVITY

% form factor B
B=calc_B(C_f, psi, f_zeta);

% pressure term (Smoluchowski-Effect)
k_G=calc_k_G(l, d_p);

% k_p
k_p=calc_k_p(lambda_p, lambda_f);

% Radiation term
k_rad=calc_k_rad(sigma, epsilon, T, d_p, lambda_f)

% factor N
N=calc_N(k_G, k_rad, k_p);

% realtive conductivity of the core element
k_c=calc_k_c(N, B, k_p, k_rad, k_G);

% relative condctivity of the particle bed
k_bed=calc_k_bed(psi, phi_p, k_G, k_rad, k_p, k_c);


% % OUTPUT LAMBDA_BED
% heat conductivity of particle bed

lambda_bed=calc_lambda_bed(k_bed, lambda_f);




end