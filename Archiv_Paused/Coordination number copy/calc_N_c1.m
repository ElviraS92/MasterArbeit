function [N_c1] = calc_N_c1(S_a, N_c12, N_c11)
%CALC_N_C1: N_c1 - coordinaton number of particle type 1, refers to large particles, here HTS [-]
%   non-cohesive!!

N_c1=S_a*N_c12+(1-S_a)*N_c11;


end

