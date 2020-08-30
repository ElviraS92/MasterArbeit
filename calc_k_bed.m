function [k_bed] = calc_k_bed(psi, phi_p, k_G, k_rad, k_p, k_c)
%CALC_K_BED: k_bed - relative heat conductivity of particle bed; 
%            psi - porosity [-];
%            phi_p - flattening factor of particles [-]; 
%            k_G - pressure term (Smoluchowski-Effect) for relative heat conductivity;
%            k_rad - radiation term for relative heat conductivity [-];
%            k_p - relative heat conductivity of particles [-];
%            k_c - relative heat conductivity of the unit cell core [-];
%   Detailed explanation goes here
k_bed =(1-sqrt(1-psi))*psi*((psi-1+(1/k_G))^(-1)+k_rad)+sqrt(1-psi)*(phi_p*k_p+(1-phi_p)*k_c);
end

