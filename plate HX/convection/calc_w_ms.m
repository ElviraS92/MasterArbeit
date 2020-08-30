function [w_ms] = calc_w_ms(V_ms, A_cs)
%CALC_W_MS      A_cs - cross-section of the gap flow area [m^2]
%               w_ms - velocity of the fluid, here molten salt [m^2/s]
%   Detailed explanation goes here

w_ms=V_ms/A_cs;

end

