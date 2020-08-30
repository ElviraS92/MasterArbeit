function [q_p] = calc_q_p_hx_CaO_plates(alpha, T_plate_in, T_CaO_in)
%CALC_Q_P_HX_CACO3 		q_p 		- heat flux 										[W/m^2]
%						alpha		- heat transfer coefficient							[W/(m^2*K)]
%						T_plate_in 	- temperature of the heated plates at the inlet		[K]
%						T_CaO_in	- temperature of bed material CaO at the inlet		[K]
%   Detailed explanation goes here

q_p=alpha*(T_CaO_in-T_plate_in);

end

