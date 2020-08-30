function [Y_V] = calc_Y_V(n_1, n_2, V_HTS, V_p)
%CALC_Y_V:  Y_V - volume ratio of heat transfer spheres and particle volume
%   Detailed explanation goes here

Y_V=(n_1*V_HTS)/(n_2*V_p+n_1*V_HTS);

end

