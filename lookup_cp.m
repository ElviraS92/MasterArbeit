function [cp] = lookup_cp(theta, table_cp)
%LOOKUP_CP Summary of this function goes here
%   Detailed explanation goes here

[rows, columns]=size(table_cp.data);

endIndex = 1;
for i=1:rows
    endIndex=i;
    theta_i=table_cp.data(i,table_cp.description.theta.index);
   
   
   if theta_i==theta
       cp=table_cp.data(i,table_cp.description.cp.index);
       break
       
   elseif theta_i>theta
       
       if i==1
           cp=table_cp.data(i,table_cp.description.cp.index);
           break
           
       end 
           
       theta_lowervalue=table_cp.data(i,table_cp.description.theta.index);
       theta_uppervalue=theta_i;
       
       cp_lowervalue=table_cp.data(i,table_cp.description.cp.index);
       cp_uppervalue=table_cp.data(i+1,table_cp.description.cp.index);
   
       cp=linear_interpolation(theta_lowervalue, theta_uppervalue, theta, cp_lowervalue, cp_uppervalue);
       
       break  
       
 
endIndex   
    
    
    
end  
    

end

