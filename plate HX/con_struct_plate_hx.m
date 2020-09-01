% constants
constants.sigma=5.67037e-8;
constants.R=8314.46;

%input_parameter

% parameters.w_ms_1=0.3;
% parameters.w_ms_3=0.3;


% Phase 1: Heat Transfer CaO -> Plates

input_values.theta_CaO_in_1=900;
input_values.theta_ms_in_1=700;

input_values.m_CaO_1=20; % [kg/s]

% input_values.t_1=0.2;
parameters.t_res_1=400;

input_values.rho_p_CaO=1600;
input_values.rho_p_bed_CaO=850;

input_values.w_bed_CaO=0.005;
input_values.w_bed_CaCO3=0.005;

% HX geometry and material

parameters.hx_type=4;   

% hx_type=2 -> Kreuzstrom mit zwei Durchgängen, unvermischter rohrstrom, gegensinnig
% hx_type=3 -> Kreuzstrom mit drei Durchgängen, unvermischter rohrstrom, gegensinnig
% hx_type=4 -> Kreuzstrom mit vier Durchgängen, unvermischter rohrstrom, gegensinnig

input_values.s_plate_ms=0.005;
input_values.s_plate_bed=0.05;

% input_values.height_plate=1;
input_values.width_plate=1;

input_values.depth_hx=1;

% input_values.n_plates_row=16;
% input_values.n_rows=2;

input_values.epsilon_w=0.9;

input_values.lambda_mat=25; %[W/mK] Cr-alloy, estimated mean value, at approx. 700 °C
input_values.delta_mat=0.002; 


% Phase 3: Heat Transfer Plates -> CaCO3
input_values.theta_CaCO3_in_3=650;
% input_values.theta_ms_in_3=750;
input_values.p=1e5;

% input_values.t_3=0.2;
parameters.t_res_3=400;

input_values.phi=0.8;

input_values.m_CaCO3_3=21.56; % [kg/s]
input_values.d_p=0.0002;
input_values.delta_p=2.5e-6;

% mass fraction of CaCO3 mass flow
input_values.m_frac_CaO_3=0.835;
input_values.m_frac_CaCO3_3=0.165;

input_values.m_CaO_mix=input_values.m_frac_CaO_3*input_values.m_CaCO3_3;
input_values.m_CaCO3_mix=input_values.m_frac_CaCO3_3*input_values.m_CaCO3_3;

input_values.rho_p_CaCO3_pure=1772.1;
input_values.rho_p_CaCO3=calc_rho_CaCO3_mf(input_values.m_CaO_mix, input_values.m_CaCO3_mix, input_values.rho_p_CaO, input_values.rho_p_CaCO3_pure);
input_values.rho_p_bed_CaCO3=1416.92;

input_values.phi_p=0.0077;
input_values.Cf=1.25;
input_values.f_zeta=1;
input_values.epsilon_bed=0.9;
input_values.C=2.8;
input_values.M=28.96;


save('Test_plates_04.mat', 'constants', 'input_values')

