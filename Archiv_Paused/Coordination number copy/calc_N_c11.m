function [N_c11] = calc_N_c11(psi_HTS)
%CALC_N_C11: N_c11 - Coordination Number, contacts of large particles to another large particle, here  p1= HTS [-] 
%            phi_C - angle of internal friction [°]

% non-cohesive
% two-component mixture of non-cohesive spheres, Suzuki et. al. (1983)

% model equation by Suzuki et. al. (1980)

% coefficient b_x corresponds to b/x in the model by Suzuki et. al. (1980)
b_x=7.318e-2+2.193*psi_HTS-3.357*psi_HTS^2+3.194*psi_HTS^3;
 
N_c11=(2.812*(1-psi_HTS)^(-1/3))/((b_x)^2*(1+b_x^2));

if N_c11>12
    N_c11=12;
end

end

