function [lambda_CaCO3] = lookup_lambda_CaCO3(T, table_lambda_CaCO3)
%CALC_LAMBDA_CACO3 Summary of this function goes here
%   Reference:  Touloukian, Y.S., Powell, R.W., Ho, C.Y. and Klemens, P.G. Thermophysical and Electronic Properties Information and Analysis Center Lafayette In, TPRC Data Series Volume 2
%   LERP between measruing points

[rows, columns]=size(table_lambda_CaCO3.data);

endIndex = 1;
for i=1:rows
    endIndex=i;
    T_i=table_lambda_CaCO3.data(i,1); % 1. Spalte ist Temperatur
   
   
   if T_i==T
       lambda_CaCO3=table_lambda_CaCO3.data(i,2); % 2. Spalte ist lambda
       break
       
   elseif T_i>T
       
       if i==1
           lambda_CaCO3=table_lambda_CaCO3.data(i,2); % 2. Spalte ist lambda
           break

       end 
           
       T_lowervalue=table_lambda_CaCO3.data(endIndex-1,1);
       T_uppervalue=T_i;
       
       lambda_lowervalue=table_lambda_CaCO3.data(endIndex-1,2);
       lambda_uppervalue=table_lambda_CaCO3.data(endIndex,2);
   
       lambda_CaCO3=linear_interpolation(T_lowervalue, T_uppervalue, T, lambda_lowervalue, lambda_uppervalue);
       
       break  
       
    
    
    
end  
    

end