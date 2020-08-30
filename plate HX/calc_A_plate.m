function [A_plate] = calc_A_plate(height_plate, width_plate)
%CALC_A_PLATE           A_plate      - surface area of one plate (just one side) [m^2]
%                       height_plate - height (vertical dimension) of one plate  [m]
%                       width_plate  - width (horizontal dimension) of one plate [m]
%
%   Detailed explanation goes here

A_plate=height_plate*width_plate;

end

