function [T_CaCO3_out] = calc_T_CaCO3_out(P_2, T_CaCO3_in, T_ms_in)
%CALC_T_CACO3_OUT Summary of this function goes here
%   Detailed explanation goes here

T_CaCO3_out=T_CaCO3_in+P_2*(T_ms_in-T_CaCO3_in);

end

