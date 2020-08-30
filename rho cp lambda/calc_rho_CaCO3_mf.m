function [rho_p_CaCO3_mf] = calc_rho_CaCO3_mf(m_CaO_mix, m_CaCO3_mix, rho_p_CaO, rho_p_CaCO3)
%CALC_RHO_CACO3_MF Summary of this function goes here
%   Detailed explanation goes here

rho_p_CaCO3_mf=(m_CaO_mix+m_CaCO3_mix)/((m_CaO_mix/rho_p_CaO)+(m_CaCO3_mix/rho_p_CaCO3));

end

