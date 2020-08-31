function [Nu_m_lam] = calc_Nu_m_lam(Re_d, Pr, d_h, width_plate)
%CALC_NU_M_LAM Summary of this function goes here
%   aus VDI_wärmeatlas G2 Punkt 2.3.1

fprintf('calc_Nu_m_lam implementation not final, Plates at the edge of the HX, Nu_1=4,861 not 7.541 !! \n')

Nu_m_lam=((7.541^3+(1.841*(Re_d*Pr*d_h/width_plate)^(1/3))^3))^(1/3);

% ((nthroot(2/(1+22*Pr),6)*sqrt(Re_d*Pr*d_h/width_plate))^3  % strömungstechnischer/thermischer Anlauf


end

