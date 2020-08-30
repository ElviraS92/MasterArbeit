function [T_CaCO3_out] = calc_T_CaCO3_out_plates(T_CaCO3_in, T_plate_in, alpha, A_plates_tot, m_p_CaCO3, cp_CaCO3)
%CALC_T_CACO3_OUT_PLATES Summary of this function goes here
%   Detailed explanation goes here

T_CaCO3_out= T_CaCO3_in+(k_tot*A_plates_tot*(T_plate_in-T_CaCO3_in))/(m_p_CaCO3*cp_CaCO3);


end

