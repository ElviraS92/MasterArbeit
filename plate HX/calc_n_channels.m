function [n_channels] = calc_n_channels(depth_hx,s_plate_ms,s_plate_bed, delta_mat)
%CALC_N_CHANNELS Summary of this function goes here
%   Detailed explanation goes here

n_channels_nonint=((depth_hx-s_plate_ms)/(s_plate_bed+s_plate_ms+2*delta_mat))-1; % value can be a non-integer
n_channels_int=round(n_channels_nonint);                                          % round to integer
n_channels=n_channels_int;

end

