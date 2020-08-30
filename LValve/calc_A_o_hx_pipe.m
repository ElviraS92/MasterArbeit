function [A_o_hx_pipe] = calc_A_o_hx_pipe(length_hx_pipe, d_o_hx_pipe)
% calc_A_o_hx_pipe      A_o_hx_pipe     - surface area of the outer side of the pipe    [m^2]
%                       length_hx_pipe  - effective length (or height) of the pipe      [m]
%                       d_o_hx_pipe     - outside diameter of the hx pipe               [m]
%   Detailed explanation goes here

A_o_hx_pipe=2*pi*length_hx_pipe*(d_o_hx_pipe/2);

end

