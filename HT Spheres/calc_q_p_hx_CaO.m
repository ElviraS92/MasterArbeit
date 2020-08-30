function [q_p] = calc_q_p_hx_CaO(alpha, T_HTS_in, T_CaO_in)
%CALC_Q_P_HX_CACO3 Summary of this function goes here
%   Detailed explanation goes here

q_p=alpha*(T_CaO_in-T_HTS_in);

end

