function [N_c_mono_Nakagaki] = calc_N_c_mono_Nakagaki(psi)
%CALC_N_C_MONO Summary of this function goes here
%   Detailed explanation goes here

% for psi<=0.82
N_c_mono_Nakagaki=1.61*psi^(-1.48);

% for psi>=0.82
% N_c_mono_Nakagaki=4.28e-3*psi^(-17.3)+2;
end

