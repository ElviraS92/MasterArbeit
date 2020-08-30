% alpha(t) plot

load('Test_L_valve_01.mat');
load('table_lambda_air.mat');
load('table_lambda_CaCO3.mat');
load('table_lambda_hx_pipe.mat');

%% temperature of CaO and CaCO3 through the HX-L-Valve

length_values=1:1:10;


for i=1:length(length_values)
    
    input_values.length_hx_pipe=length_values(i);
    
    execute_L_valve;
        
    T_CaO_out_i(i)=calc_values.T_CaO_out;
    T_CaCO3_out_i(i)=calc_values.T_CaCO3_out;
    
end


%%
% t_values=0.001:0.01:100;
% 
% 
% for i=1:length(t_values)
%     
%     input_values.t_1=t_values(i);
%     input_values.t_3=t_values(i);
%     
%     execute_plate_hx;
%     
%     alpha_1_i(i)=calc_values.alpha_1;
%     alpha_beddry_1_i(i)=calc_values.alpha_beddry_1;
%     alpha_WS_1_i(i)=calc_values.alpha_WS_1;
%     alpha_WP_1_i(i)=calc_values.alpha_WP_1;
%     
%     alpha_3_i(i)=calc_values.alpha_3;
%     alpha_beddry_3_i(i)=calc_values.alpha_beddry_3;
%     alpha_WS_3_i(i)=calc_values.alpha_WS_3;
%     alpha_WP_3_i(i)=calc_values.alpha_WP_3;   
%   
%     q_p_1_i(i)=calc_values.q_p_1;
%     q_p_3_i(i)=calc_values.q_p_3;
%     
%     T_CaO_out_1_i(i)=calc_values.T_CaO_out;
%     
% end

% % plot (t_values, alpha_1_i,'b', t_values, alpha_beddry_1_i, 'm', t_values, alpha_WS_1_i, 'g', t_values, alpha_WP_1_i, 'k');
% title('alpha and alpha beddry');
% axis([0 100 1500 6000]);
% xlabel ('residence time [s]');
% ylabel ('heat transfer coefficient [W/(m^2 K)]');
% % hold on;
% plot (t_values, alpha_3_i,'b', t_values, alpha_beddry_3_i, 'r', t_values, alpha_WS_3_i, 'g', t_values, alpha_WP_3_i, 'k');
% % pause;

% figure
% plot (t_values, q_p_1_i,'b');
% title('Q');
% axis([0 100 0 500000]);
% xlabel ('residence time [s]');
% ylabel ('heat flux [W/m2]');
% hold on;
% plot (t_values, q_p_3_i,'k');

% figure
% title('T_CaO_out');
% axis([0 100 0 1200]);
% xlabel ('residence time [s]');
% ylabel ('Outlet Temperature [K]');

figure
plot (length_values, T_CaO_out_i, 'r');
hold on;
plot (length_values, T_CaCO3_out_i, 'b');
