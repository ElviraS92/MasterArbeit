function [m_bed_1hx] = calc_m_bed_1hx(m_cs_bed_1ch,n_channels)
%CALC_M_BED_1HX Summary of this function goes here
%   Detailed explanation goes here

m_bed_1hx=m_cs_bed_1ch*(n_channels+1);  % +1 because of the hx edge area

end

