function [delta_p_ms_tot] = calc_delta_p_ms_tot(delta_p_ms, hx_type)
%CALC_DELTA_P delta_p_ms - pressure loss in the channel [Pa]
%   Detailed explanation goes here

delta_p_ms_tot=delta_p_ms*hx_type;

end

