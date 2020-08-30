function [lambda_hx_pipe] = lookup_lambda_hx_pipe(T, table_lambda_hx_pipe)
%LOOKUP_LAMBDA_HX_PIPE Summary of this function goes here
%   Reference: table_lambda_air taken from: Thermophysical Properties of Matter, Vol. 3: Thermal Conductivity S. 512 (600 K - 1300 K)

[rows, columns]=size(table_lambda_hx_pipe.data);

endIndex = 1;
for i=1:rows
    endIndex=i;
    T_i=table_lambda_hx_pipe.data(i,1); % 1. Spalte ist Temperatur
   
   
   if T_i==T
       lambda_hx_pipe=table_lambda_hx_pipe.data(i,2); % 2. Spalte ist lambda
       break
       
   elseif T_i>T
       
       if i==1
           lambda_hx_pipe=table_lambda_hx_pipe.data(i,2); % 2. Spalte ist lambda
           break

       end 
           
       T_lowervalue=table_lambda_hx_pipe.data(endIndex-1,1);
       T_uppervalue=T_i;
       
       lambda_lowervalue=table_lambda_hx_pipe.data(endIndex-1,2);
       lambda_uppervalue=table_lambda_hx_pipe.data(endIndex,2);
   
       lambda_hx_pipe=linear_interpolation(T_lowervalue, T_uppervalue, T, lambda_lowervalue, lambda_uppervalue);
       
       break  
       
    
    
    
end  
    

end



end

