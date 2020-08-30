function [q_p] = calc_q_p_hx_CaCO3_plates(alpha, T_plate_in, T_CaCO3_in)
%CALC_Q_P_HX_CACO3 		q_p 		- heat flux 										[W/m^2]
%						alpha		- heat transfer coefficient							[W/(m^2*K)]
%						T_plate_in 	- temperature of the heated plates at the inlet		[K]
%						T_CaCO3_in	- temperature of bed material CaCO3 at the inlet	[K]
%   Detailed explanation goes here

q_p=alpha*(T_plate_in-T_CaCO3_in);

end

