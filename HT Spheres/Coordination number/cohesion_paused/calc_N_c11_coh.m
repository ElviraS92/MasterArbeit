function [N_c11] = calc_N_c11(phi_C, d_p)
%CALC_N_C11: N_c11 - Coordination Number, contacts of large particles to another large particle, here  p1= HTS [-] 
%            phi_C - angle of internal friction [°]
%   Detailed explanation goes here

% N_c11=(0.804-1.07*sin(phi_C*pi/180).^2)*((d_p/d_p)+1)/(1+(d_p/d_p)-sqrt((d_p/d_p)*(d_p/d_p+2)));
%
%for d_p/d_p=1

N_c11=(0.804-1.07*sin(phi_C*pi/180).^2)*2/(2-sqrt(3));

end

