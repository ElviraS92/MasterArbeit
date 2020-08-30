function [cp_CaCO3_mf] = calc_cp_CaCO3_mf(m_frac_CaO, m_frac_CaCO3, cp_CaO, cp_CaCO3)
%CALC_CP_CACO3_MIX Summary of this function goes here
%   Detailed explanation goes here


cp_CaCO3_mf=m_frac_CaO*cp_CaO+m_frac_CaCO3*cp_CaCO3;


end

