function [N_c2] = calc_N_c2(S_a, N_c22, N_c21)
%CALC_N_C1: N_c1 - coordinaton number of particle type 2, refers to small particles, here bed particles (CaO or CaCO3) [-]
%   non-cohesive!!

N_c2=S_a*N_c22+(1-S_a)*N_c21;


end

