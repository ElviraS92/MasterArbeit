function [y_lerp] = linear_interpolation(x1, x2, x_m, y1, y2)
%LINEAR_INTERPOLATION Summary of this function goes here
%   Detailed explanation goes here

y_lerp=y1+(x_m-x1)*(y2-y1)/(x2-x1);


end

