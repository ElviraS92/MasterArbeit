function [T_CaO_out] = calc_T_CaO_out_1(T_CaO_in, T_HTS_in, m_CaO_1, m_HTS_1, cp_CaO, cp_HTS, alpha, A_hx_tot)
% function [T_CaO_out] = calc_T_CaO_out_1(Q, T_CaO_in, cp_CaO, m_CaO, t)

%CALC_T_CACO3_OUT Summary of this function goes here
%   Detailed explanation goes here
C_p_HTS=cp_HTS*m_HTS_1;
C_p_CaO=cp_CaO*m_CaO_1;
ny=(1/C_p_HTS)+(1/C_p_CaO);

T_CaO_out=T_CaO_in-(T_CaO_in-T_HTS_in)*(C_p_HTS/(C_p_HTS+C_p_CaO)*(1-exp(-ny*alpha*A_hx_tot)));

% T_CaO_out=T_CaO_in-(Q/(cp_CaO*m_CaO*t));

end

