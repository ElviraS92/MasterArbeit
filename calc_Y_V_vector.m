function [Y_V_vector] = calc_Y_V_vector(n_1, n_2, V_HTS, V_p)
%Y_V_VECTOR Summary of this function goes here
%   Detailed explanation goes here


Y_V=(n_1*V_HTS)/(n_2*V_p+n_1*V_HTS);


end

