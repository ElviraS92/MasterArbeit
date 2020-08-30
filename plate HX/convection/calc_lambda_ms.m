function [lambda_ms] = calc_lambda_ms(T_ms)
%CALC_LAMBDA_MS Summary of this function goes here
%   reference: Determination of thermal physical properties of alkali fluoride and carbonater eutetic molten salt (2019)

lambda_ms=0.336+2.58e-4*T_ms;

end

