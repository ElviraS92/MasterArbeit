function [cp_CaO] = calc_cp_CaO(T)
%CALC_CP_CAO Summary of this function goes here
%   reference: Excel-AddIn Stoffwerte

M_CaO=56.079e-3;

if      T>=100 && T<=298.15
            A1 = 17.352;
            B1 = 122.756;
            C1 = -1.375;
            D1 = -117.091;

            cp_CaO = (A1 + B1*10^(-3)*T + C1*(10^5)*(T^(-2)) + D1*(10^(-6))*(T^2))/M_CaO;
            
elseif  T>298.15 && T<=1400
            A1 = 57.753;
            B1 = -10.779;
            C1 = -11.51;
            D1 = 5.328;

            cp_CaO = (A1 + B1*10^(-3)*T + C1*(10^5)*(T^(-2)) + D1*(10^(-6))*(T^2))/M_CaO;
            
elseif  T>1400 && T<=2900
            A1 = 20.393;
            B1 = 22.264;
            C1 = 138.413;
            D1 = -3.115;

            cp_CaO = (A1 + B1*10^(-3)*T + C1*(10^5)*(T^(-2)) + D1*(10^(-6))*(T^2))/M_CaO;
                        
elseif  T>2900 && T<=3172    
            A1 = -41.561;
            B1 = 54.65;
            C1 = 803.222;
            D1 = -7.856  ; 
 
            cp_CaO = (A1 + B1*10^(-3)*T + C1*(10^5)*(T^(-2)) + D1*(10^(-6))*(T^2))/M_CaO;
               
elseif  T>3172 && T<=6000    
            A1 = 84;
            B1 = 0;
            C1 = 0;
            D1 = 0 ;   

            cp_CaO = (A1 + B1*10^(-3)*T + C1*(10^5)*(T^(-2)) + D1*(10^(-6))*(T^2))/M_CaO;
            
else 
    cp_CaO='Input Temperature T is outside the permitted value range! (100 K <= T <= 6000 K)'
end

