function [T_ms_out_3] = calc_T_ms_out_3_plates(P_1, T_CaCO3_in, T_ms_in)
%CALC_T_MS_OUT_3 Summary of this function goes here
%   Detailed explanation goes here

T_ms_out_3=T_ms_in-P_1*(T_ms_in-T_CaCO3_in);

end

