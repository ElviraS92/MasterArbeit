function [A_fic] = calc_A_fic(h_fic, d_fic)
%CALC_A_FIC        A_fic - surface area of the fictional sphere [m^2] 
%                  h_fic - 
%                  d_fic - diameter of the fictional sphere [m]
%   Detailed explanation goes here
A_fic=2*pi*h_fic*d_fic/2;
end

