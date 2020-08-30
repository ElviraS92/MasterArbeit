function [N_c_average] = calc_N_c_average(S_p, N_c1, N_c2)
%CALC_N_C_AVERAGE:  N_c_average - average coordinaton number of particles in a binary particle mixture [-]
%   non-cohesive!!

N_c_average=S_p*N_c2+(1-S_p)*N_c1;

end

