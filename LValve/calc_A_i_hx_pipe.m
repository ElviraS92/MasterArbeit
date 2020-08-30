function [A_i_hx_pipe] = calc_A_i_hx_pipe(length_hx_pipe, d_i_hx_pipe)
%CALC_A_I_HX_PIPE       A_i_hx_pipe     - surface area of the inner side of the pipe    [m^2]
%                       length_hx_pipe  - effective length (or height) of the pipe      [m]
%                       d_i_hx_pipe     - inside diameter of the hx pipe                [m]
%   Detailed explanation goes here

A_i_hx_pipe=2*pi*length_hx_pipe*(d_i_hx_pipe/2);

end

