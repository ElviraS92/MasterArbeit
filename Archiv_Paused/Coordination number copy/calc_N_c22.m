function [N_c22] = calc_N_c22(psi_p)
%CALC_N_C22:    N_c22 - Coordination Number, contacts of large particles to another large particle, here  p2= p [-] 
%   Detailed explanation goes here

% two-component mixture of non-cohesive spheres, Suzuki et. al. (1983)

% model equation by Suzuki et. al. (1980)

% coefficient b_x corresponds to b/x in the model by Suzuki et. al. (1980)
b_x=7.318e-2+2.193*psi_p-3.357*psi_p^2+3.194*psi_p^3;

N_c22=(2.812*(1-psi_p)^(-1/3))/((b_x)^2*(1+b_x^2));

if N_c22>12
    N_c22=12;
end

end

