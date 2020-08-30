function [cp_CaCO3] = calc_cp_CaCO3(T)
%CALC_CP_CACO3 Summary of this function goes here
%   reference: Excel-AddIn Stoffwerte

M_CaCO3=100.089e-3;

if T>=289.15 && T<=1603
        A1 = 99.544;
        B1 = 27.136;
        C1 = -21.479;
        D1 = 0.002;
cp_CaCO3= (A1 + B1*(10^(-3))*T + C1*(10^5)*(T^(-2)) + D1*(10^(-6))*(T^2))/M_CaCO3;      
        
elseif T>1603 && T<=2000
        A1 = 160;
        B1 = 0;
        C1 = 0;
        D1 = 0;
cp_CaCO3= (A1 + B1*(10^(-3))*T + C1*(10^5)*(T^(-2)) + D1*(10^(-6))*(T^2))/M_CaCO3;

else
    cp_CaCO3='Input Temperature T is outside the permitted value range! (289.15 K <= T <= 2000 K)'
end

end