function [k_hx] = calc_k_hx_pipe(A_i_hx_pipe, A_m_hx_pipe, A_o_hx_pipe, alpha_CaO, alpha_CaCO3, lambda_hx_pipe, th_hx_pipe)
%CALC_K_HX_PIPE     k_hx - thermal transmittance (Wärmedurchngangskoeffizient)      [W/(m^2 K)]
%
%
%
%
%
% Cylindric pipe, CaO in the inner pipe, CaCO3 on the outside of the pipe  

k_hx=1/((A_o_hx_pipe/(alpha_CaO*A_i_hx_pipe))+((A_o_hx_pipe*th_hx_pipe)/(lambda_hx_pipe*A_m_hx_pipe))+(1/(alpha_CaCO3)));

end

