function [T_ms_out_1] = calc_T_ms_out_1_plates(P_1, T_CaO_in, T_ms_in)
%CALC_T_MS_OUT_1 Summary of this function goes here
%   Detailed explanation goes here

T_ms_out_1=T_ms_in-P_1*(T_ms_in-T_CaO_in);

end

