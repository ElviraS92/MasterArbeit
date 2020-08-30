% alpha(t) plot

load('Test_HTS_06.mat');
load('table_lambda_air.mat');
load('table_lambda_CaCO3.mat');

% t_values=0.001:0.01:100;


% for i=1:length(t_values)
%     
%     input_values.t_1=t_values(i);
%     input_values.t_3=t_values(i);
%     
%     execute_HTS;
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
%     Q_1_i(i)=calc_values.Q_1;
%     Q_3_i(i)=calc_values.Q_3;
%     
%     q_p_1_i(i)=calc_values.q_p_1;
%     q_p_3_i(i)=calc_values.q_p_3;
%     
%     theta_HTS_in_3_i(i)=calc_values.theta_HTS_in_3;
%     theta_CaO_out_1_i(i)=calc_values.theta_CaO_out_1;
%     
%     theta_HTS_out_3_i(i)=calc_values.theta_HTS_in_3;
%     theta_CaCO3_out_3_i(i)=calc_values.theta_CaCO3_out_3;
% end


% Anzahl Durchläufe
circ_j=1:1000;

%
T_HTS_in_1_j=1:length(circ_j);
T_HTS_in_3_j=1:length(circ_j);
T_HTS_in_3_j=1:length(circ_j);
T_HTS_out_3_j=1:length(circ_j);

T_CaO_out_1_j=1:length(circ_j);
T_CaCO3_out_3_j=1:length(circ_j);


% erster Durchlauf

calc_values.T_HTS_in_1=convert_theta2T(input_values.theta_HTS_in_1);
calc_values.T_CaO_in_1=convert_theta2T(input_values.theta_CaO_in_1);

    execute_HTS;

T_HTS_in_1_j(1)=calc_values.T_HTS_in_1;
T_HTS_in_3_j(1)=calc_values.T_HTS_in_3;

T_HTS_out_1_j(1)=calc_values.T_HTS_out_1;
T_HTS_out_3_j(1)=calc_values.T_HTS_out_3;

T_CaO_in_1_j(1)=calc_values.T_CaO_in_1;
T_CaCO3_in_3_j(1)=calc_values.T_CaCO3_in_3;
T_CaO_out_1_j(1)=calc_values.T_CaO_out_1;
T_CaCO3_out_3_j(1)=calc_values.T_CaCO3_out_3;

% weitere Durchläufe

for j=2:length(circ_j)

    calc_values.T_HTS_in_1=T_HTS_out_3_j(j-1);    

    execute_HTS;
    
T_HTS_in_1_j(j)=T_HTS_out_3_j(j-1); 
T_HTS_in_3_j(j)=calc_values.T_HTS_in_3;
T_HTS_out_1_j(j)=calc_values.T_HTS_out_1;
T_HTS_out_3_j(j)=calc_values.T_HTS_out_3;  


T_CaO_in_1_j(j)=calc_values.T_CaO_in_1;
T_CaCO3_in_3_j(j)=calc_values.T_CaCO3_in_3;

T_CaO_out_1_j(j)=calc_values.T_CaO_out_1;
T_CaCO3_out_3_j(j)=calc_values.T_CaCO3_out_3;


Q_1_j(j)=calc_values.Q_1;
Q_3_j(j)=calc_values.Q_3;

end



%% plot
% 
% plot (t_values, alpha_1_i,'c', t_values, alpha_beddry_1_i, 'm', t_values, alpha_WS_1_i, 'g', t_values, alpha_WP_1_i, 'k');
% title('alpha and alpha beddry');
% axis([0 100 0 6000]);
% xlabel ('residence time [s]');
% ylabel ('heat transfer coefficient [W/(m^2 K)]');
% hold on;
% plot (t_values, alpha_3_i,'b', t_values, alpha_beddry_3_i, 'r', t_values, alpha_WS_3_i, 'g', t_values, alpha_WP_3_i, 'k');
% pause;
% 
% % plot (t_values, Q_1_i,'b');
% % title('Q');
% % axis([0 100 0 800000]);
% % xlabel ('residence time [s]');
% % ylabel ('heat [J]');
% % hold on;
% % plot (t_values, Q_3_i,'k');
% 
% figure
% % plot (t_values, q_p_1_i,'b');
% title('Q');
% axis([0 100 0 500000]);
% xlabel ('residence time [s]');
% ylabel ('heat flux [W/m2]');
% hold on;
% plot (t_values, q_p_3_i,'k');
% 





% figure
% title('T_HTS_out_1 bzw. T_HTS_in_3');
% axis([0 100 600 1000]);
% xlabel ('residence time [s]');
% ylabel ('temperature HTS [K]');
% hold on;
% plot (t_values, theta_HTS_in_3_i,'k', t_values, theta_CaO_out_1_i, 'r');
% hold on;
% 
% plot (t_values, theta_HTS_out_3_i,'b', t_values, theta_CaCO3_out_3_i, 'c');

% figure
% title('T_HTS ');
% axis([0 1000 600 1000]);
% xlabel ('residence time [s]');
% ylabel ('temperature HTS [K]');
% plot (circ_j, T_HTS_in_1_j,'k', circ_j, T_HTS_in_3_j, 'r', circ_j, T_HTS_out_1_j, 'b', circ_j, T_HTS_out_3_j, 'g');
% hold on;

figure
plot (circ_j, T_CaO_out_1_j,'k', circ_j, T_CaCO3_out_3_j, 'r', circ_j, T_HTS_in_1_j, circ_j, T_HTS_in_3_j, circ_j, T_CaO_in_1_j, 'b', circ_j, T_CaCO3_in_3_j, 'g');
title('T\_CaO\_out\_1 & T\_CaCO3\_out\_3');
axis([0 1000 800 1000]);
xlabel ('process cycles [-]');
ylabel ('temperature HTS [K]');
legend('T\_CaO\_out\_1\_j','T\_CaCO3\_out\_3\_j', 'T\_HTS\_in\_1\_j', 'T\_HTS\_in\_3\_j', 'T\_CaO\_in\_1\_j', 'T\_CaCO3\_in\_3\_j')

figure
plot (circ_j, Q_1_j,'b', circ_j, Q_3_j,'k');
title('Q');
axis([0 100 0 1000]);
xlabel ('process cycles [-]');
ylabel ('heat [J]');
legend('Q\_1\_j','Q\_3\_j')
