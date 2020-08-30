function [V_void_HTS] = calc_V_void_HTS(psi_HTS, V_HTS_tot)
%CALC_V_VOID Summary of this function goes here
%   Detailed explanation goes here

V_void_HTS=(psi_HTS*V_HTS_tot)/(1-psi_HTS);

end

