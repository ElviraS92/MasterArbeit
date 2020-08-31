function [N_c21] = calc_N_c21(phi_C, d_p, d_HTS)
%CALC_N_C21:    N_c21 - Coordination Number, contacts of large particles to one small particle, here  p1= HTS and p2=p [-] 
%   Detailed explanation goes here

N_c21=(0.804-1.07*sin(phi_C*pi/180).^2)*((d_p/d_HTS)+1)/(1+(d_p/d_HTS)-sqrt((d_p/d_HTS)*((d_p/d_HTS)+2)));

end

