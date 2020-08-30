function [m_cs_ms] = calc_m_cs_ms(rho_ms, w_ms, A_cs_ms)
%CALC_M_MS m_cs_ms - HTM/molten salt mass flow through the given cross section area [kg/s]
%   Detailed explanation goes here

m_cs_ms=rho_ms*w_ms*A_cs_ms;

end

