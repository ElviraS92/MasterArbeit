function [S_p] = calc_S_p(n_1, n_2)
%CALC_S_P:  S_p - fractional number of particle 2 in a binary particle mixture, refers to small particles, here bed aprticles (CaO or CaCO3) [-]
%           n_1 - number of particles type 1, large particles, here HTS [-]
%           n_2 - number of particles type 2, small paritcles, here bed particles (CaO or CaCO3) [-]
%   Detailed explanation goes here

S_p=n_2/(n_1+n_2);

end

