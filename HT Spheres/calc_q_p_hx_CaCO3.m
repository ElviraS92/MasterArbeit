function [q_p] = calc_q_p_hx_CaCO3(alpha, T_HTS_in, T_CaCO3_in)
%CALC_Q_P_HX_CACO3 Summary of this function goes here
%   Detailed explanation goes here

q_p=alpha*(T_HTS_in-T_CaCO3_in);

end

