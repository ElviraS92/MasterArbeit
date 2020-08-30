function [alpha, alpha_WS, alpha_beddry, alpha_WP] = calc_heat_transfer_coefficient(T, C, R, M, lambda_f, p, c_pg, rho_bed, lambda_bed, c_bed, sigma, epsilon_w, epsilon_bed, d_p, delta, phi, t)
%CALC_ALPHA:      alpha 		- overall heat transfer coefficient 						[W/(m^2 K)]
%          		  alpha_WS      - heat transfer coefficient wall to particle bed            [W/(m^2 K)]
% 				  alpha_beddry	- heat transfer coefficient of the particle bed             [W/(m^2 K)]
% 				  alpha_WP		- heat transfer coefficient wall to particle in contact     [W/(m^2 K)]
% 
%                 C 			- factor C, here for air C=2.8, dependant on molar mass of the gas (Air C=2.8, Helium C=50, H2O C=3.6)	
%                 R 			- gas constant 												[J/(kmol K)]      
%                 M 			- molar mass of fluid/gas									[kg/kmol]
%                 p 			- pressure 													[Pa]
%                 c_pg 			- specific heat capacity of the fluid/gas 					[J/(kgK)]
%                 
% 
%                 rho_bed 		- density of particle bed,									[kg/m^3]
%                 lambda_f 		- heat conductivity of the fluid phase in the void spaces 	[W/(mK)]
%                 lambda_bed 	- heat conductivity of particle bed,						[W/(mK)]
%                 c_bed 		- heat capacity of particle bed, 							[J/(kg K)]
%                 t 			- residence time, 											[s]
%                 sigma 		- stefan boltzmann constant, sigma=5.670374419e-8 			[W/(m^2 K^4)]
%                 epsilon_w 	- emissivity of the wall, 									[-]
%                 epsilon_bed  	- emissivity of the particle bed, 							[-]
%                 T 			- mean temperature of the process, 							[K]
%                 l 			- modified mean free path of gas molecules 					[-]
%                 d_p 			- diameter of the particles									[m]
%                 delta 		- particle surface roughness  								[m]
%                 phi 			- surface coverage (Flächenbedeckungsgrad)					[-]
                
% modified mean free path of gas molecules
gamma=calc_gamma(T, C);
l=calc_l(gamma, R, T, M, lambda_f, p, c_pg);

% heat transfer coefficient for a dry particle bed 
[alpha_beddry, ~]=calc_alpha_beddry(rho_bed, lambda_bed, c_bed, t); 

% radiation term for  heat transfer coefficient 
C_wbed=calc_C_wbed(sigma, epsilon_w, epsilon_bed);
alpha_rad=calc_alpha_rad(C_wbed, T);

% heat transfer coefficient wall to particles
alpha_WP=calc_alpha_WP(lambda_f, l, d_p, delta);

% heat transfer coefficient wall to particle bed
alpha_WS=calc_alpha_WS(phi, alpha_WP, alpha_rad);

% total heat transfer coefficient
alpha=calc_alpha(alpha_WS, alpha_beddry);

end

