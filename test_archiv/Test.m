function [output] = Test(inputArg1)
%TEST Summary of this function goes here
%   Detailed explanation goes here
if(isfield(inputArg1, 'temperature'))
    output=0;
else
    output=inputArg1.temperatur*2.5;
end


end

