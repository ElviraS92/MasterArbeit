function [xi_HTS] = calc_xi_HTS(phi_HTS, beta_HTS)
%CALC_XI_HTS:   xi_hts 		- view factor for binary particle bed (mixture of solid particles and heat transfer spheres (HTS)
%               phi_HTS		-
%				beta_HTS 	-
%   Detailed explanation goes here
xi_HTS=phi_HTS/beta_HTS;

end

