function [result] = execute_HTS(x)

% renaming: parameters for optimization
parameters.d_HTS=x(1);
parameters.n_HTS_1=x(2);
parameters.n_HTS_3=x(2); % same number of spheres for both phases
parameters.t_1=x(3);
parameters.t_3=x(3); % same residence time for both phases


% loading material values tables
load('table_lambda_air.mat');
load('table_lambda_CaCO3.mat');

% call input_values and constants for calcutlation
con_struct_HTS;

%% PHASE 1: Heat Transfer CaO to HTS (Index 1)

% CONVERSION OF VARIABLES
% temperatures

calc_values.T_HTS_in_1=convert_theta2T(input_values.theta_HTS_in_1);
calc_values.T_CaO_in_1=convert_theta2T(input_values.theta_CaO_in_1);

calc_values.T_m_1=calc_T(...
	calc_values.T_HTS_in_1,... 
	calc_values.T_CaO_in_1...
);

% cp and lambda values for T_m_1

calc_values.cp_air_1=calc_cp_air(calc_values.T_m_1);
calc_values.cp_CaO_1=calc_cp_CaO(calc_values.T_m_1);
calc_values.cp_Al2O3_1=calc_cp_Al2O3(calc_values.T_m_1);

calc_values.lambda_air_1=lookup_lambda_air(calc_values.T_m_1, table_lambda_air);
calc_values.lambda_CaO_1=lookup_lambda_CaCO3(calc_values.T_m_1, table_lambda_CaCO3); % keine Werte f�r CaO, Annahme: lambda_CaO = lambda_CaCO3
calc_values.lambda_Al2O3_1=calc_lambda_Al2O3(calc_values.T_m_1);


% lambda_bed, only particles in bed, here CaO

calc_values.lambda_bed_1=calc_heat_conductivity_bed(...
	calc_values.T_m_1, ...
	input_values.rho_p_CaO, ...
	input_values.rho_p_bed_CaO, ...
	input_values.C, ...
	constants.R, ...
	input_values.M, ...
    calc_values.lambda_CaO_1, ...
    calc_values.lambda_air_1, ...
	input_values.p, ...
    calc_values.cp_air_1, ...
	input_values.Cf,...
	input_values.f_zeta,...
	input_values.d_p, ...
	constants.sigma,...
	input_values.epsilon_bed,...
	input_values.phi_p...
);


[calc_values.alpha_1, calc_values.alpha_WS_1, calc_values.alpha_beddry_1, calc_values.alpha_WP_1, calc_values.N_c12_1] =calc_heat_transfer_coefficient_HTS(...
	calc_values.T_m_1,          ...
	input_values.C,             ...
	constants.R,                ...
	input_values.M,             ...
	calc_values.lambda_air_1,   ...
	input_values.p,             ...
	calc_values.cp_air_1,       ...
	input_values.rho_HTS_bed,   ...
	input_values.rho_HTS_solid, ...
	parameters.d_HTS,         ...
	input_values.d_p,           ...
	constants.sigma,            ...
	input_values.epsilon_HTS,   ...
	input_values.epsilon_bed,   ...
	input_values.delta_p,       ...
	input_values.rho_p_bed_CaO, ...
	calc_values.lambda_bed_1,   ...
	calc_values.cp_CaO_1,       ...
	parameters.t_1            ...
);

% Heat Exchanger Parameter (here HTS)

% % max. number of HTS (for Contact number N_c12 and Void Volume)
% % 
% % calc_values.n_HTS_max_1=calc_n_HTS_max(...
% %     input_values.n_CaO_1,...
% %     calc_values.N_c12_1,... 
% %     calc_values.psi_HTS,...
% %     parameters.d_HTS,...
% %     input_values.d_p... % d_p has the same value for CaO and CaCO3
% % );
% % 

calc_values.A_HTS_1=calc_A_HTS(parameters.d_HTS);
calc_values.A_HTS_tot_1=calc_A_HTS_tot(parameters.n_HTS_1, calc_values.A_HTS_1);


% heat flux

calc_values.q_p_1=calc_q_p_hx_CaO(   ...
    calc_values.alpha_1,      ...
	calc_values.T_HTS_in_1,   ...
	calc_values.T_CaO_in_1 ...
);

calc_values.Q_1=calc_Q_hx_CaO(...
	calc_values.alpha_1,      ...
	calc_values.T_HTS_in_1,   ...
	calc_values.T_CaO_in_1, ...
	calc_values.A_HTS_tot_1  ...
);


calc_values.V_HTS_tot_1=calc_V_tot(parameters.d_HTS, parameters.n_HTS_1);
calc_values.m_HTS_1=calc_m(input_values.rho_HTS_solid, calc_values.V_HTS_tot_1);

% % outlet temperatures

calc_values.T_HTS_out_1=calc_T_HTS_out_1(...
    calc_values.Q_1, 					... 
    calc_values.T_HTS_in_1,           ...
    calc_values.cp_Al2O3_1,           ...
    calc_values.m_HTS_1                ... 
 );

calc_values.V_CaO_tot_1=calc_V_tot(input_values.d_p, input_values.n_CaO_1);
calc_values.m_CaO_1=calc_m(input_values.rho_p_CaO, calc_values.V_CaO_tot_1);

calc_values.T_CaO_out_1=calc_T_CaO_out(...
    calc_values.Q_1, 					... 
    calc_values.T_CaO_in_1,           ...
    calc_values.cp_CaO_1,           ...
    calc_values.m_CaO_1...
 );

% CONVERSION OF VARIABLES
% temperatures

calc_values.theta_HTS_out_1=convert_T2theta(calc_values.T_HTS_out_1);
calc_values.theta_CaO_out_1=convert_T2theta(calc_values.T_CaO_out_1);

% critical residence time

calc_values.t_c_1=calc_t_c(   ...
    input_values.rho_p_bed_CaO, ...
    calc_values.lambda_bed_1, ...
    calc_values.cp_CaO_1,   ...
    calc_values.alpha_WS_1    ...
);

% X_d and Y_V
calc_values.X_d_1=calc_X_d(parameters.d_HTS, input_values.d_p);
calc_values.Y_V_1=calc_Y_V(parameters.n_HTS_1, input_values.n_CaO_1, calc_values.V_HTS_tot_1, calc_values.V_CaO_tot_1);


%% PHASE 3: Heat Transfer HTS to CaCO3 (Index 3)

% CONVERSION OF VARIABLES
% temperatures


calc_values.T_HTS_in_3=calc_values.T_HTS_out_1; % hier: theta_HTS_in_3=theta_HTS_out_1 (keine W�rmeverluste)
calc_values.T_CaCO3_in_3=convert_theta2T(input_values.theta_CaCO3_in_3);
calc_values.theta_HTS_in_3=calc_values.theta_HTS_out_1; % hier: theta_HTS_in_3=theta_HTS_out_1 (keine W�rmeverluste)

calc_values.T_m_3=calc_T(...
	calc_values.T_CaCO3_in_3,... 
	calc_values.T_HTS_in_3...
);

% cp and lambda values for T_m_1

calc_values.cp_air_3=calc_cp_air(calc_values.T_m_3);
calc_values.cp_CaCO3_3=calc_cp_CaCO3(calc_values.T_m_3);
calc_values.cp_CaO_3=calc_cp_CaO(calc_values.T_m_3);
calc_values.cp_CaCO3_mf_3=calc_cp_CaCO3_mf(input_values.m_frac_CaO_3, input_values.m_frac_CaCO3_3, calc_values.cp_CaO_3, calc_values.cp_CaCO3_3);

calc_values.cp_Al2O3_3=calc_cp_Al2O3(calc_values.T_m_3);

calc_values.lambda_air_3=lookup_lambda_air(calc_values.T_m_3, table_lambda_air);
calc_values.lambda_CaCO3_3=lookup_lambda_CaCO3(calc_values.T_m_3, table_lambda_CaCO3);
calc_values.lambda_Al2O3_3=calc_lambda_Al2O3(calc_values.T_m_3);


% lambda_bed, only particles in bed, here CaCO3

calc_values.lambda_bed_3=calc_heat_conductivity_bed(...
	calc_values.T_m_3, ...
	input_values.rho_p_CaCO3, ...
	input_values.rho_p_bed_CaCO3, ...
	input_values.C, ...
	constants.R, ...
	input_values.M, ...
    calc_values.lambda_CaCO3_3, ...
    calc_values.lambda_air_3, ...
	input_values.p, ...
    calc_values.cp_air_3, ...
	input_values.Cf,...
	input_values.f_zeta,...
	input_values.d_p, ...
	constants.sigma,...
	input_values.epsilon_bed,...
	input_values.phi_p...
);


[calc_values.alpha_3, calc_values.alpha_WS_3, calc_values.alpha_beddry_3, calc_values.alpha_WP_3, calc_values.N_c12_3] =calc_heat_transfer_coefficient_HTS(...
	calc_values.T_m_3,          ...
	input_values.C,             ...
	constants.R,                ...
	input_values.M,             ...
	calc_values.lambda_air_3,   ...
	input_values.p,             ...
	calc_values.cp_air_3,       ...
	input_values.rho_HTS_bed,   ...
	input_values.rho_HTS_solid, ...
	parameters.d_HTS,           ...
	input_values.d_p,           ...
	constants.sigma,            ...
	input_values.epsilon_HTS,   ...
	input_values.epsilon_bed,   ...
	input_values.delta_p,       ...
	input_values.rho_p_bed_CaCO3, ...
	calc_values.lambda_bed_3,   ...
	calc_values.cp_CaCO3_mf_3,  ...
	parameters.t_3            ...
);

% Heat Exchanger Parameter (here HTS)
% number of HTS

% max. number of HTS (for Contact number N_c12 and Void Volume)

calc_values.psi_HTS=calc_psi_HTS(input_values.rho_HTS_bed, input_values.rho_HTS_solid);

calc_values.n_HTS_max_3=calc_n_HTS_max(...
    input_values.n_CaCO3_3,...
    calc_values.N_c12_3,... 
    calc_values.psi_HTS,...
    parameters.d_HTS,...
    input_values.d_p... % d_p has the same value for CaO and CaCO3
);

% % old:
% calc_values.n_HTS_3=input_values.n_CaCO3_3/calc_values.N_c12_3; %max. Anzahl an HTS f�r ein gegebene n_CaCO3 (genug Partikel f�r die Kontaktanzahl N_c12)

calc_values.A_HTS_3=calc_A_HTS(parameters.d_HTS);
calc_values.A_HTS_tot_3=calc_A_HTS_tot(parameters.n_HTS_3, calc_values.A_HTS_3);


% heat flow

calc_values.q_p_3=calc_q_p_hx_CaCO3(   ...
    calc_values.alpha_3,      ...
	calc_values.T_HTS_in_3,   ...
	calc_values.T_CaCO3_in_3 ...
);

calc_values.Q_3=calc_Q_hx_CaCO3(...
	calc_values.alpha_3,      ...
	calc_values.T_HTS_in_3,   ...
	calc_values.T_CaCO3_in_3, ...
	calc_values.A_HTS_tot_3  ...
);

calc_values.V_HTS_tot_3=calc_V_tot(parameters.d_HTS, parameters.n_HTS_3);
calc_values.m_HTS_3=calc_m(input_values.rho_HTS_solid, calc_values.V_HTS_tot_3);


% % outlet temperatures

calc_values.T_HTS_out_3=calc_T_HTS_out_3(...
    calc_values.Q_3, 					... 
    calc_values.T_HTS_in_3,           ...
    calc_values.cp_Al2O3_3,           ...
    calc_values.m_HTS_3                ...
  );


calc_values.V_CaCO3_tot_3=calc_V_tot(input_values.d_p, input_values.n_CaCO3_3);
calc_values.m_CaCO3_3=calc_m(input_values.rho_p_CaCO3, calc_values.V_CaCO3_tot_3);

calc_values.T_CaCO3_out_3=calc_T_CaCO3_out(...
    calc_values.Q_3, 					... 
    calc_values.T_CaCO3_in_3,           ...
    calc_values.cp_CaCO3_mf_3,           ...
    calc_values.m_CaCO3_3                ...
 );

% CONVERSION OF VARIABLES
% temperatures

calc_values.theta_HTS_out_3=convert_T2theta(calc_values.T_HTS_out_3);
calc_values.theta_CaCO3_out_3=convert_T2theta(calc_values.T_CaCO3_out_3);

result=calc_values.theta_CaCO3_out_3;

% critical residence time

calc_values.t_c_3=calc_t_c(   ...
    input_values.rho_p_bed_CaCO3, ...
    calc_values.lambda_bed_3, ...
    calc_values.cp_CaCO3_mf_3,   ...
    calc_values.alpha_WS_3   ...
);

% X_d and Y_V
calc_values.X_d_3=calc_X_d(parameters.d_HTS, input_values.d_p);
calc_values.Y_V_3=calc_Y_V(parameters.n_HTS_3, input_values.n_CaCO3_3, calc_values.V_HTS_tot_3, calc_values.V_CaCO3_tot_3);

end