function [NTU_1, NTU_2] = calc_NTU(k_tot, height_plate, width_plate, C_p_ms, C_p_bed)
%CALC_A_AND_B dimensionless parameters, NTU_1 and NTU_2, NTU_1 refers to Molten Salt flow, NTU_2 refers to particle bed flow
%           
%   Detailed explanation goes here
NTU_2 = 2*k_tot*height_plate*width_plate/(C_p_bed); % factor 2 because both sides of the channel
NTU_1 = 2*k_tot*height_plate*width_plate/(C_p_ms);

end

