function [k_G] = calc_k_G(l, d)
%CALC_K_G:  k_G - pressure term (Smoluchowski-Effect) for relative heat conductivity [-];
%           l - (small L) mean free path  of gas molecules [-];
%           d - particle size, particle diameter [m];
% 
%   Calculation of k_G
k_G = (1+(l/d))^(-1);

end

