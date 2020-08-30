function [lambda_fric] = calc_lambda_fric(Re_d)
%CALC_LAMBDA_FRIC Summary of this function goes here
%   Stationäre inkompressible Strömung; Hydrodynamik, Chapter 3

% laminar gap flow
if Re_d<2320
lambda_fric=96/Re_d;    


% turbulent flow
else
lambda_fric=0.3164*Re_d^(-0.25);

end
end

