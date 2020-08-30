function [T_CaO_out] = calc_T_CaO_out(P_2, T_CaO_in, T_ms_in)
%CALC_T_CAO_OUT Summary of this function goes here
%   Detailed explanation goes here

T_CaO_out=T_CaO_in+P_2*(T_ms_in-T_CaO_in);

end

