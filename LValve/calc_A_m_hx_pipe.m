function [A_m_hx_pipe] = calc_A_m_hx_pipe(A_i_hx_pipe, A_o_hx_pipe)
%CALC_A_M_HX_PIPE       A_m_hx_pipe - logarithmic mean of the cylindric area        [m^2]
%                       A_i_hx_pipe - surface area of the inner side of the pipe    [m^2]
%                       A_o_hx_pipe - surface area of the outer side of the pipe    [m^2]
%  

A_m_hx_pipe=(A_o_hx_pipe-A_i_hx_pipe)/(log(A_o_hx_pipe/A_i_hx_pipe));

end

