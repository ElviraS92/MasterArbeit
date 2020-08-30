function [X_d] = calc_X_d(d_hts, d_p)
%CALC_X_D:  	X_d 	- diameter ratio of heat transfer spheres and particles	[-]
%				d_hts	- diameter of the Heat Transfer Spheres					[m]
%				d_p		- diameter of the particles								[m]
%   Detailed explanation goes here
X_d=d_hts/d_p;

end

