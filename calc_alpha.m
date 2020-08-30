function [alpha] = calc_alpha(alpha_WS, alpha_beddry)
%CALC_ALPHA        alpha        - overall heat transfer coefficient for a stationary particle bed   [W/(m^2 K)]
%                  alpha_WS     - heat transfer coefficient heat exchanger wall to particle bed     [W/(m^2 K)]
%                  alpha_beddry - heat transfer coefficient for a dry particle bed                  [W/(m^2 K)]
%   Schlünder

alpha=1/((1/alpha_WS)+(1/alpha_beddry));

end

