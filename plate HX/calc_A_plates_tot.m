function [A_plates_tot] = calc_A_plates_tot(A_plates_row, n_rows)
%CALC_A_PLATES_TOT      A_plates_tot - total surface area inside the plate heat exchanger [m^2]
%                       A_plates_row - surface area for a complete row of hx-plates [m^2]
%                       n_rows       - number of rows inside the plate heat exchanger (rows are arranged one below the other) [-]
%   Detailed explanation goes here

A_plates_tot=A_plates_row*n_rows;

end

