function [N_c12] = calc_N_c12(phi_C, d_p, d_HTS)
%CALC_COORDINATION_NUMBER:      N_c12 - Coordination Number, contacts of small particles to one large particle, here  p1= HTS and p2=p [-] 


%   Detailed explanation goes here


N_c12=(0.804-1.07*sin(phi_C*pi/180).^2)*((d_HTS/d_p)+1)/(1+(d_HTS/d_p)-sqrt((d_HTS/d_p)*((d_HTS/d_p)+2)));


end

