function [Nu_m_trans] = calc_Nu_m_trans(Re_d, Pr, d_h, width_plate)
%CALC_NU_M_TRANS Summary of this function goes here
%   Detailed explanation goes here

Nu_m_2300=calc_Nu_m_lam(2300, Pr, d_h, width_plate); % Re_d=2300
Nu_m_10000=calc_Nu_m_turb(10000, Pr, d_h, width_plate); % Re_d=10000

gamma_conv=(Re_d-2300)/(10000-2300);

Nu_m_trans=(1-gamma_conv)*Nu_m_2300+gamma_conv*Nu_m_10000;


end
