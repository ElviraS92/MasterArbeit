function [n_p_void] = calc_n_p_void(V_void_HTS, d_p)
%CALC_N_P Summary of this function goes here
%   wird nicht gebraucht für die n_HTS_max Berechnung!!

V_p=(pi*d_p^3)/6;
n_p_void=V_void_HTS/V_p;

end

