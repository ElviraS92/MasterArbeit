endIndex = 1;
for i=1:100
   endIndex = i;
   temp_i=table_cp_CaO.data(i,table_cp_CaO.description.theta.index);
   
   if temp_i==70
       cp_i=table_cp_CaO.data(i,table_cp_CaO.description.cp.index);
       break
       
   elseif temp_i>70
       
       if i==1
           break
       end 
           
       
       theta_lowervalue=table_cp_CaO.data(i-1,table_cp_CaO.description.theta.index);
       theta_uppervalue=temp_i;
       
       cp_lowervalue=table_cp_CaO.data(i-1,table_cp_CaO.description.cp.index);
       cp_uppervalue=table_cp_CaO.data(i,table_cp_CaO.description.cp.index);
   
       
       break  
       
   
   end   
   
  
       

end
endIndex