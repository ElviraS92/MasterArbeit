function [h_fic] = calc_h_fic(d_fic, d_p)
%CALC_H_HTS:    h_fic - sphere segment of the fictional sphere [m]
%   Detailed explanation goes here
h_fic=d_fic/2-sqrt((d_fic/2)^2-(d_p/2)^2);
end

