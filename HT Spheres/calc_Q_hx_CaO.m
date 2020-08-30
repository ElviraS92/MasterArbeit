function [Q] = calc_Q_hx_CaO(alpha, T_HTS_in, T_CaO_in, A_hx_tot, t)
%CALC_Q_HX_CACO3 Summary of this function goes here
%   Detailed explanation goes here

Q=alpha*t*A_hx_tot*(T_CaO_in-T_HTS_in);

end

