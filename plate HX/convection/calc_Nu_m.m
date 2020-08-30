function [Nu_m] = calc_Nu_m(Re_d, Pr, d_h, width_plate)
%CALC_NU_M Summary of this function goes here
%   Detailed explanation goes here

if Re_d<2300 && Pr>0.6 && Pr<1000
    Nu_m=calc_Nu_m_lam(Re_d, Pr, d_h, width_plate);
    fprintf('Re_d < 2300, laminar \n')
    
elseif Re_d>2300 && Re_d<10000 && Pr>0.6 && Pr<1000
    Nu_m=calc_Nu_m_trans(Re_d, Pr, d_h, width_plate);
    fprintf('Re_d>2300 && Re_d<10000, in transition area \n')
    
elseif Re_d>10000 && Pr>0.6 && Pr<1000
    Nu_m=calc_Nu_m_turb(Re_d, Pr, d_h, width_plate);
    fprintf('Re_d>10000, turbulent \n')
    
else
    Nu_m=-10;
    fprintf('Pr has not a value between 0.6 and 1000! Nu_m=-10 Error \n')
    
end

