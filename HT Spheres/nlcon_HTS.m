function [c, ceq] = nlcon_HTS(x)
%NLCON Summary of this function goes here
%   Detailed explanation goes here

% call input_values for calculation
con_struct_HTS;

rho_HTS_bed=input_values.rho_HTS_bed;
rho_HTS_solid=input_values.rho_HTS_solid;
d_p=input_values.d_p;
n_p=input_values.n_CaCO3_3;

psi_HTS=calc_psi_HTS(rho_HTS_bed, rho_HTS_solid);
N_c11=calc_N_c11(psi_HTS);

%non-linear constraints
c = x(2)-n_p/(((2*0.067*N_c11+(x(1)/d_p+1))/(1+x(1)/d_p-((x(1)/d_p)*((x(1)/d_p)+2))^(1/2)))+(psi_HTS*x(1)^3)/((1-psi_HTS)*d_p^3));
ceq = [];



end

