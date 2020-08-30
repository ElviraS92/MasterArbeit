function [A_plates_row] = calc_A_plates_row_VDI(A_plate, n_plates_row)
%CALC_A_PLATES_ROW          A_plates_row - surface area for a complete row of hx-plates [m^2]
%                           A_plate      - surface area of one plate (just one side) [m^2]
%                           n_plates_row - number of plates in one row of the heat exchanger [-]
%   every plate has two working sides, except the two outer plates which form the outer walls of the entire heat exchanger

A_plates_row=n_plates_row*A_plate;

end

