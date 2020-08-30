% load('Test_plates_02.mat');
% load('table_lambda_air.mat');
% load('table_lambda_CaCO3.mat');


% VDI Heat Atlas Assignment 


%% Phase 3: Heat Transfer Plates to Weizen

% CONVERSION OF VARIABLES
% temperatures
calc_values.T_plate_in=convert_theta2T(input_values.theta_plate_in);
calc_values.T_Weizen_in=convert_theta2T(input_values.theta_bed_in);

calc_values.T_m=60+273.15;

% cp values for T

calc_values.cp_Weizen=1800;
calc_values.cp_air=1009;

% lambda values for T
% load('table_lambda_air.mat');
% load('table_lambda_CaCO3.mat');

% lambda_bed, only particles in bed, here Weizen

calc_values.lambda_bed=0.2;
calc_values.lambda_air=0.02894;


[calc_values.alpha, calc_values.alpha_WS, calc_values.alpha_beddry, calc_values.alpha_WP] =calc_heat_transfer_coefficient(...
	calc_values.T_m,              ...
	input_values.C,             ...
	constants.R,                ...
	input_values.M,             ...
	calc_values.lambda_air,      ...
	input_values.p,             ...
	calc_values.cp_air,          ...
	input_values.rho_p_bed,     ...
	calc_values.lambda_bed,    ...
	calc_values.cp_Weizen,      ...
	constants.sigma,            ...
	input_values.epsilon_w,     ...
	input_values.epsilon_bed,   ...
    input_values.d_p,           ...
    input_values.delta_p,       ...
    input_values.phi,            ...
	input_values.t              ...
);

% Heat Exchanger Parameter (here plates with molten salt) same geometry for CaCO3 and CaO HX

calc_values.A_plate=calc_A_plate(input_values.height_plate, input_values.width_plate);
calc_values.A_plates_row=calc_A_plates_row_VDI(calc_values.A_plate, input_values.n_plates_row);
% calc_values.A_plates_tot=calc_A_plates_tot(calc_values.A_plates_row, input_values.n_rows);


% heat flow

calc_values.q_p=calc_q_p_hx_CaCO3_plates(   ...
    calc_values.alpha,        ...
	calc_values.T_plate_in,   ...
	calc_values.T_Weizen_in    ...
);


% outlet temperature

calc_values.T_Weizen_out=calc_T_CaCO3_out_plates(...
    calc_values.T_Weizen_in, 	...
    calc_values.T_plate_in, 	...
	calc_values.alpha, 		...
    calc_values.A_plates_row, 	...
    input_values.m_Weizen, 	...
    calc_values.cp_Weizen 		...
);

% critical residence time

calc_values.t_c=calc_t_c(   ...
    input_values.rho_p_bed, ...
    calc_values.lambda_bed, ...
    calc_values.cp_Weizen,   ...
    calc_values.alpha_WS    ...
);

calc_values.theta_Weizen_out=convert_T2theta(calc_values.T_Weizen_out);
