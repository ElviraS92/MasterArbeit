function [delta_p_ms] = calc_delta_p_ms(lambda_fric, width_plate, w_ms, rho_ms, d_h)
%CALC_DELTA_P delta_p_ms - pressure loss in the channel [Pa]
%   Detailed explanation goes here

delta_p_ms=lambda_fric*width_plate*w_ms^2*rho_ms/(2*d_h);

end

