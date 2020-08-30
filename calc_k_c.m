function [k_c] = calc_k_c(N, B, k_p, k_rad, k_G)
% % calc_porosity: k_c - relative heat conductivity of the unit cell core;
%                  N - factor for calc_k_c [-];
%                  B - form parameter [-];
%                  k_p - relative heat conductivity of particles [-];
%                  k_rad - radiation term for relative heat conductivity [-];
%                  k_G - pressure term (Smoluchowski-Effect) for relative heat conductivity [-];
% 
%   Calculation of k_c
k_c=2/N*(((B*(k_p+ k_rad -1))/(N^2*k_G*k_p))*log((k_p+k_rad)/(B*(k_G+((1-k_G)*(k_p+k_rad)))))+(B+1)/(2*B)*(k_rad/k_G-B*(1+(1-k_G)/k_G*k_rad))-(B-1)/(N*k_G));

end

