function [alpha_WS] = calc_alpha_WS(phi, alpha_WP, alpha_rad)
%CALC_ALPHA_WS Summary of this function goes here
%   Detailed explanation goes here

alpha_WS=phi*alpha_WP+alpha_rad;
end

