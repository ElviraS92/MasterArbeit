function [Nu_m_turb] = calc_Nu_m_turb(Re_d, Pr, d_h, width_plate)
%CALC_NU_M_TURB Summary of this function goes here
%   aus VDI_wärmeatlas G2 Punkt 2.4 -> Hinweis auf Kapitel G1

xi_turb=(1.8*log10(Re_d)-1.5)^(-2);

Nu_m_turb=(((xi_turb/8)*(Re_d-1000)*Pr)/(1+12.7*sqrt(xi_turb/8)*(Pr^(2/3)-1)))*(1+(d_h/width_plate));

end

