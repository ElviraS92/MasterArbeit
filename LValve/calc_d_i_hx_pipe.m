function [d_i_hx_pipe] = calc_d_i_hx_pipe(w_CaO, m_p_CaO, rho_bed_CaO)
%CALC_D_I_HX_PIPE Summary of this function goes here
%   Detailed explanation goes here

d_i_hx_pipe=2*sqrt(m_p_CaO/(rho_bed_CaO*w_CaO*pi));

end

