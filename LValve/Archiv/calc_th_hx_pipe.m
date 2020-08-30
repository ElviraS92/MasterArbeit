function [th_hx_pipe] = calc_th_hx_pipe(d_i_hx_pipe, d_o_hx_pipe)
%CALC_TH_HX_PIPE        th_hx_pipe  - thickness of the hx pipe          [m]
%                       d_i_hx_pipe - inside diameter of the hx pipe    [m]
%                       d_o_hx_pipe - outside diameter of the hx pipe   [m]
%   Detailed explanation goes here

th_hx_pipe=(d_o_hx_pipe-d_i_hx_pipe)/2;

end

