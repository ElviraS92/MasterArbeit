function [cp_air] = calc_cp_air(T)
%CALC_CP_AIR Summary of this function goes here
%   reference: Excel-AddIn Stoffwerte

% Air - components 21% O2 78%N2 1%Ar

M_air=28.96e-3;

if T>=223.15 && T<=1773.15
    
    A1 = 30.2128061330391;
    B1 = -1.01943046726089e-2;
    C1 = 2.69672877843247e-5;
    D1 = -1.80513719239642e-8;
    E1 = 4.13049223916829e-12;
    
cp_air = (A1 + B1*T + C1*T^2 + D1*T^3 + E1*T^4)/M_air;


else 
    cp_air =    'Input Temperature T is outside the permitted value range! (223.15 K <= T <= 1773.15 K)'

end
end

