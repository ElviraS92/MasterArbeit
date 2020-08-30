function [R_1,R_2] = calc_R_12(C_p_ms, C_p_bed)
%CALC_R_12 Summary of this function goes here
%   Detailed explanation goes here

R_1 = C_p_ms/C_p_bed;
R_2 = 1/R_1;

end

