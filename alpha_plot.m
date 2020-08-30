% alpha(t) plot

load('Test_plates_01.mat');
load('table_lambda_air.mat');
load('table_lambda_CaCO3.mat');

t_values=0.001:0.1:10000;


for i=1:length(t_values)
    
    input_values.t=t_values(i);
    
    execute_plate_hx;
    
    alpha_i(i)=calc_values.alpha;
    alpha_beddry_i(i)=calc_values.alpha_beddry;
    alpha_WS_i(i)=calc_values.alpha_WS;
    alpha_WP_i(i)=calc_values.alpha_WP;
end

plot (t_values, alpha_i,'b', t_values, alpha_beddry_i, 'r', t_values, alpha_WS_i, 'g', t_values, alpha_WP_i, 'k');
title('alpha and alpha beddry');
axis([0 10000 0 6000]);
xlabel ('residence time [s]');
ylabel ('heat transfer coefficient [W/(m^2 K)]');