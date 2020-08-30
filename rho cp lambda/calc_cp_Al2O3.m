function [cp_Al2O3] = calc_cp_Al2O3(T)
%CALC_CP_AL2O3 Summary of this function goes here
%   reference: NIST Chemistriy WebBook - aluminium oxide, used equation for alpha alumina. 
% URL: https://webbook.nist.gov/cgi/cbook.cgi?ID=C1344281&Units=SI&Type=JANAFS&Table=on#JANAFS
% Retrieved: 06.07.2020

M_Al2O3=101.9613e-3;

if T>=298 && T<=2327
    
    A1 = 102.4290;
    B1 = 38.74980;
    C1 = -15.91090;
    D1 = 2.628181;
    E1 = -3.007551;
    
cp_Al2O3_mol = (A1 + B1*T/1000 + C1*(T/1000)^2 + D1*(T/1000)^3 + E1/((T/1000)^2));
cp_Al2O3=cp_Al2O3_mol/M_Al2O3;

else 
    cp_Al2O3 =    'Input Temperature T is outside the permitted value range! (298 K <= T <= 2327 K)'

end


end

