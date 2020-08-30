function [cp_Al2O3] = calc_cp_Al2O3_v2(T)
%CALC_CP_AL2O3 Summary of this function goes here
%   reference: "Thermophysical Properties of High Temperature Solid Materials", Vol 4., Pt 1, Sect 1, pp. 8 - 47. (Überprüfen!!)
%   URL: http://www-ferp.ucsd.edu/LIB/PROPS/PANOS/al2o3.html
%   Retrieved: 06.07.2020
if T>=298 && T<=2000
    
    A1 = -40.92;
    B1 = 4.024;
    C1 = -5.0048e-3;
    D1 = 2.8852e-6;
    E1 = -6.2488e-10;
    
cp_Al2O3 = (A1 + B1*T + C1*T^2 + D1*T^3 + E1*T^4);


else 
    cp_Al2O3 =    'Input Temperature T is outside the permitted value range! (298 K <= T <= 2000 K)'

end


end

