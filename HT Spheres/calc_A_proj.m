function [A_proj] = calc_A_proj(d_HTS, d_fic, A_fic)
%CALC_A_PROJ Summary of this function goes here
%   Detailed explanation goes here

A_proj=(d_HTS^2*A_fic)/(d_fic^2);

end

