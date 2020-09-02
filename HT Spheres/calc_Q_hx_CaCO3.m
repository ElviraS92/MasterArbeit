function [Q] = calc_Q_hx_CaCO3(alpha, T_HTS_in, T_CaCO3_in, A_hx_tot, t)
%CALC_Q_HX_CACO3 Summary of this function goes here
%   Detailed explanation goes here

Q=alpha*A_hx_tot*(T_HTS_in-T_CaCO3_in);

end

