function [A_cs_bed] = calc_A_cs_bed(n_plates_row, s_plates_bed, width_plate)
%CALC_A_CS_BED Summary of this function goes here
%   Detailed explanation goes here

A_cs_bed=(n_plates_row-1)*s_plates_bed*width_plate;

end

