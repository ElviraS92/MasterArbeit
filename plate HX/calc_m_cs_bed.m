function [m_cs_bed] = calc_m_cs_bed(rho_bed, w_bed, A_cs_bed)
%CALC_M_MS m_cs_ms - HTM/molten salt mass flow through the given cross section area [kg/s]
%   Detailed explanation goes here

m_cs_bed=rho_bed*w_bed*A_cs_bed;

end

