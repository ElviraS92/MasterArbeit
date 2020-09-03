function [T_HTS_out] = calc_T_HTS_out_3(T_CaCO3_in, T_HTS_in, m_CaCO3_3, m_HTS_3, cp_CaCO3, cp_HTS, alpha, A_hx_tot)
% function [T_HTS_out] = calc_T_HTS_out_3(Q, T_HTS_in, cp_HTS, m_HTS, t)
%CALC_T_HTS_OUT Summary of this function goes here
%   Detailed explanation goes here

C_p_HTS=cp_HTS*m_HTS_3;
C_p_CaCO3=cp_CaCO3*m_CaCO3_3;
ny=(1/C_p_HTS)+(1/C_p_CaCO3);

T_HTS_out=T_HTS_in-(T_HTS_in-T_CaCO3_in)*(C_p_CaCO3/(C_p_HTS+C_p_CaCO3)*(1-exp(-ny*alpha*A_hx_tot)));

% T_HTS_out=T_HTS_in-(Q/(cp_HTS*m_HTS*t));

end

