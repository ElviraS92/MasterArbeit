function [cp] = Copy_of_lookup(theta, table_cp)
%LOOKUP_CP Summary of this function goes here
%   Detailed explanation goes here

[rows, columns]=size(table_cp.data);

endIndex = 1;
for i=1:rows
    endIndex=i;
    theta_i=table_cp.data(i,1); % 1. Spalte ist Temperatur
   
   
   if theta_i==theta
       cp=table_cp.data(i,3); % 3. Spalte ist cp
       break
       
   elseif theta_i>theta
       
       if i==1
           cp=table_cp.data(i,3); % 3. Spalte ist cp
           break

       end 
           
       theta_lowervalue=table_cp.data(endIndex-1,1);
       theta_uppervalue=theta_i;
       
       cp_lowervalue=table_cp.data(endIndex-1,3);
       cp_uppervalue=table_cp.data(endIndex,3);
   
       cp=linear_interpolation(theta_lowervalue, theta_uppervalue, theta, cp_lowervalue, cp_uppervalue);
       
       break  
       
    
    
    
end  
    

end

