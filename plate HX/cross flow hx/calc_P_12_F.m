function [P_1, P_2, F] = calc_P_12_F(R_1, R_2, NTU_1, NTU_2, hx_type)
%CALC_P_12 Summary of this function goes here
%   Detailed explanation goes here

% hx_type=2 -> Kreuzstrom mit zwei Durchgängen, unvermischter rohrstrom, gegensinnig
% hx_type=3 -> Kreuzstrom mit drei Durchgängen, unvermischter rohrstrom, gegensinnig
% hx_type=4 -> Kreuzstrom mit vier Durchgängen, unvermischter rohrstrom, gegensinnig

if hx_type==2
    a=0.149;
    b=1.76;
    c=0.264;
    d=0.497;

    
elseif hx_type==3
    a=0.0711;
    b=1.85;
    c=0.253;
    d=0.422;

    
elseif hx_type==4
    a=0.0419;
    b=1.89;
    c=0.246;
    d=0.399;
  
else 
    a=0.149;
    b=1.76;
    c=0.264;
    d=0.497;
   fprintf('Please use correct hx_type!! HX type is not defined, this calculation uses hx_type=2 -> Kreuzstrom mit zwei Durchgängen, unvermischter rohrstrom, gegensinnig \n') 
    
end

    
F=1/((1+a*R_1^(d*b)*NTU_1^b)^c);


if R_1==1
    P_1=NTU_1*F/(1+NTU_1*F);
    
else
    P_1=(1-exp((R_1-1)*NTU_1*F))/(1-R_1*exp((R_1-1)*NTU_1*F));

end

if R_2==1
    P_2=NTU_2*F/(1+NTU_2*F);
    
else
    P_2=(1-exp((R_2-1)*NTU_2*F))/(1-R_2*exp((R_2-1)*NTU_2*F));

end
    

end

