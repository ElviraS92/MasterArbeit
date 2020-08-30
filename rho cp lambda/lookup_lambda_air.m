function [lambda_air] = lookup_lambda_air(T, table_lambda_air)
%LOOKUP_LAMBDA_AIR Summary of this function goes here
%   Reference: table_lambda_hx_pipe taken from Präsentation ELvira_200615 (von Carina)

[rows, columns]=size(table_lambda_air.data);

endIndex = 1;
for i=1:rows
    endIndex=i;
    T_i=table_lambda_air.data(i,1); % 1. Spalte ist Temperatur
   
   
   if T_i==T
       lambda_air=table_lambda_air.data(i,2); % 2. Spalte ist lambda
       break
       
   elseif T_i>T
       
       if i==1
           lambda_air=table_lambda_air.data(i,2); % 2. Spalte ist lambda
           break

       end 
           
       T_lowervalue=table_lambda_air.data(endIndex-1,1);
       T_uppervalue=T_i;
       
       lambda_lowervalue=table_lambda_air.data(endIndex-1,2);
       lambda_uppervalue=table_lambda_air.data(endIndex,2);
   
       lambda_air=linear_interpolation(T_lowervalue, T_uppervalue, T, lambda_lowervalue, lambda_uppervalue);
       
       break  
       
    
    
    
end  
    

end



end

