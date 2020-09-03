function [T_CaCO3_out] = calc_T_CaCO3_out_3(Q, T_CaCO3_in, cp_CaCO3, m_CaCO3, t)
%CALC_T_CACO3_OUT Summary of this function goes here
%   Detailed explanation goes here
T_CaCO3_out=T_CaCO3_in+(Q/(cp_CaCO3*m_CaCO3*t));
end

