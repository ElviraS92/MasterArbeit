function [A_cs_ms, A_cs_ms_tot] = calc_A_cs(s_plate, height_plate, n_plates_row)
%CALC_A_CS Summary of this function goes here
%   Detailed explanation goes here

% A_cs=height_plate*s_plate; %for counter flow heat exchanger

A_cs_ms=width_plate*s_plate_ms; % for cross heat exchanger
A_cs_ms_tot=A_cs_ms*n_plates_row;

end

