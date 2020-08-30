function [d_outer_pipe] = calc_d_outer_pipe(w_CaCO3, m_p_CaCO3, rho_bed_CaCO3, d_i_hx_pipe, th_hx_pipe)
%CALC_D_O_HX_PIPE Summary of this function goes here
%   Detailed explanation goes here

d_outer_pipe=sqrt(4+(m_p_CaCO3/(rho_bed_CaCO3*w_CaCO3)+((d_i_hx_pipe+2*th_hx_pipe)/2)^2));

end

