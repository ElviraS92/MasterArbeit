function [T_CaO_out] = calc_T_CaO_out(Q, T_CaO_in, cp_CaO, m_2, t)
%CALC_T_CACO3_OUT Summary of this function goes here
%   Detailed explanation goes here
T_CaO_out=T_CaO_in-(Q/(cp_CaO*m_2*t));
end

