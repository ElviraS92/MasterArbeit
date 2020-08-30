function [n_HTS_max] = calc_n_HTS_max(n_p, N_c12, psi_HTS, d_HTS, d_p)
%CALC_N_HTS_MAX Summary of this function goes here
%   Detailed explanation goes here

n_HTS_max=n_p/(N_c12+(psi_HTS*d_HTS^3)/((1-psi_HTS)*d_p^3));

end

