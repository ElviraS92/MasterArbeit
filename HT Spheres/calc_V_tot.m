function [V_tot] = calc_V_tot(d, n)
%CALC_V             V_tot - total volume of a component     [m^3]
%                   d     - diameter of a component         [m]
%                   n     - number of particles/spheres     [-]
%   Detailed explanation goes here

V_tot=n*1/6*pi*d^3;

end

