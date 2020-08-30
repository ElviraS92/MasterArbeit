function [T_CaO_out] = calc_T_CaO_out(T_CaO_in, T_CaCO3_in, C_p_CaO, C_p_CaCO3, A_m_hx_pipe, k_hx_pipe)
%CALC_T_CAO_OUT Summary of this function goes here
%   CaO is the hot mass flow, CaCO is the cold mass flow

my=(1/C_p_CaO)+(1/C_p_CaCO3);

T_CaO_out=T_CaO_in-(T_CaO_in-T_CaCO3_in)*(C_p_CaCO3/(C_p_CaO+C_p_CaCO3))*(1-exp(-my*k_hx_pipe*A_m_hx_pipe));


end

