% alpha(t) plot

load('Test_HTS_06.mat');
load('table_lambda_air.mat');
load('table_lambda_CaCO3.mat');


% Variation of d_HTS 

parameters.d_HTS_i=0.005:0.005:0.1;




for i=1:length(parameters.d_HTS_i) % von 5 mm bis 100 mm 
   
    parameters.d_HTS=parameters.d_HTS_i(i); %setze d_HTS gleich d_HTS_i an der Stelle i
    
    
%% upper limit for n_HTS

[calc_limits.N_c12_1, calc_values.psi_HTS]=calc_N_c12_for_n_HTS_max(...
    input_values.rho_HTS_solid,...
    input_values.rho_HTS_bed,...
    input_values.d_p,...
    parameters.d_HTS...
);

[calc_limits.N_c12_3, calc_values.psi_HTS]=calc_N_c12_for_n_HTS_max(...
    input_values.rho_HTS_solid,...
    input_values.rho_HTS_bed,...
    input_values.d_p,...
    parameters.d_HTS...
);

calc_limits.n_HTS_max_1=calc_n_HTS_max(...
    input_values.n_CaO_1,...
    calc_limits.N_c12_1,... 
    calc_values.psi_HTS,...
    parameters.d_HTS,...
    input_values.d_p... % d_p has the same value for CaO and CaCO3
);

calc_limits.n_HTS_max_3=calc_n_HTS_max(...
    input_values.n_CaCO3_3,...
    calc_limits.N_c12_3,... 
    calc_values.psi_HTS,...
    parameters.d_HTS,...
    input_values.d_p... % d_p has the same value for CaO and CaCO3
);


% Variation of n_HTS (n_HTS für Phase 1 und 3 gleich!!)

parameters.n_HTS_1_j=1:1000:calc_limits.n_HTS_max_1;

for j=1:length(parameters.n_HTS_1_j)

parameters.n_HTS_1=parameters.n_HTS_1_j(j);
parameters.n_HTS_3=parameters.n_HTS_1_j(j);

    execute_HTS;
        
    output_values.n_HTS.alpha_1_ij(i,j)=calc_values.alpha_1;
    output_values.n_HTS.alpha_beddry_1_ij(i,j)=calc_values.alpha_beddry_1;
    output_values.n_HTS.alpha_WS_1_ij(i,j)=calc_values.alpha_WS_1;
    output_values.n_HTS.alpha_WP_1_ij(i,j)=calc_values.alpha_WP_1;
    
    output_values.n_HTS.alpha_3_ij(i,j)=calc_values.alpha_3;
    output_values.n_HTS.alpha_beddry_3_ij(i,j)=calc_values.alpha_beddry_3;
    output_values.n_HTS.alpha_WS_3_ij(i,j)=calc_values.alpha_WS_3;
    output_values.n_HTS.alpha_WP_3_ij(i,j)=calc_values.alpha_WP_3;
    
    output_values.n_HTS.Q_1_ij(i,j)=calc_values.Q_1;
    output_values.n_HTS.Q_3_ij(i,j)=calc_values.Q_3;
    
    output_values.n_HTS.q_p_1_ij(i,j)=calc_values.q_p_1;
    output_values.n_HTS.q_p_3_ij(i,j)=calc_values.q_p_3;
    
    output_values.n_HTS.theta_HTS_in_3_ij(i,j)=calc_values.theta_HTS_in_3;
    output_values.n_HTS.theta_CaO_out_1_ij(i,j)=calc_values.theta_CaO_out_1;
    
    output_values.n_HTS.theta_HTS_out_3_ij(i,j)=calc_values.theta_HTS_in_3;
    output_values.n_HTS.theta_CaCO3_out_3_ij(i,j)=calc_values.theta_CaCO3_out_3;
       
    if j==length(parameters.n_HTS_1_j)
        break
    end
    
end

end





%% plots

% figure
% plot (d_HTS_i, theta_CaO_out_1_i, d_HTS_i, theta_HTS_in_3_i, d_HTS_i, theta_HTS_out_3_i, d_HTS_i, theta_CaCO3_out_3_i);
% title('T\_CaO\_out\_1 & T\_CaCO3\_out\_3');
% axis([0 0.1 600 1000]);
% xlabel ('d\_HTS [m]');
% ylabel ('temperature HTS [°C]');
% legend('theta\_CaO\_out\_1\_i','theta\_HTS\_in\_3\_i', 'theta\_HTS\_out\_3\_i', 'theta\_CaCO3\_out\_3\_i')



