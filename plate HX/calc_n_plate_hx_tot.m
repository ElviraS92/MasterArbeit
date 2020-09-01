function [n_plate_hx_tot] = calc_n_plate_hx_tot(m_bed_tot, m_bed_1hx)
%CALC_N_PLATE_HX Summary of this function goes here
%   Detailed explanation goes here

n_plate_hx_tot_nonint=m_bed_tot/m_bed_1hx; % calculated value can be a non-integer
n_plate_hx_tot_int=ceil(n_plate_hx_tot_nonint); % round towards positive infinity
n_plate_hx_tot=n_plate_hx_tot_int;

end

