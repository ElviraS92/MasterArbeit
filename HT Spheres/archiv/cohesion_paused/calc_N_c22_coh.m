function [N_c22] = calc_N_c22(phi_C, d_HTS)
%CALC_N_C22:    N_c22 - Coordination Number, contacts of large particles to another large particle, here  p2= p [-] 
%   Detailed explanation goes here

% two-component mixture of cohesive spheres
%
% N_c22=(0.804-1.07*sin(phi_C).^2)*((d_HTS/d_HTS)+1)/(1+(d_HTS/d_HTS)-sqrt((d_HTS/d_HTS)*(d_HTS/d_HTS+2)));
%
%for d_HTS/d_HTS=1

N_c22=(0.804-1.07*sin(phi_C*pi/180).^2)*2/(2-sqrt(3));

end

