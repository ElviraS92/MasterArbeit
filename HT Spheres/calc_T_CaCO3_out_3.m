function [T_CaCO3_out] = calc_T_CaCO3_out_3(T_CaCO3_in, T_HTS_in, m_CaCO3_3, m_HTS_3, cp_CaCO3, cp_HTS, alpha, A_hx_tot)
% function [T_CaCO3_out] = calc_T_CaCO3_out_3(Q, T_CaCO3_in, cp_CaCO3, m_CaCO3, t)
%CALC_T_CACO3_OUT Summary of this function goes here
%   Detailed explanation goes here
C_p_HTS=cp_HTS*m_HTS_3;
C_p_CaCO3=cp_CaCO3*m_CaCO3_3;
ny=(1/C_p_HTS)+(1/C_p_CaCO3);

T_CaCO3_out=T_CaCO3_in+(T_HTS_in-T_CaCO3_in)*(C_p_HTS/(C_p_HTS+C_p_CaCO3)*(1-exp(-ny*alpha*A_hx_tot)));
% T_CaCO3_out=T_CaCO3_in+(Q/(cp_CaCO3*m_CaCO3*t));
end

