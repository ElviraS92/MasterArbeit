% constants
constants.sigma=5.67037e-8;
constants.R=8314.46;

%input_parameter
input_values.theta_CaCO3_in=650;
input_values.theta_CaO_in=900;
input_values.p=1e5;

% parameters.t_res=600;

% phi=0.8, pipe diameter >> particle diameter, Schlünder
input_values.phi=0.8;

% input_values.d_i_hx_pipe=0.1;
% input_values.d_o_hx_pipe=0.2;
% input_values.length_hx_pipe=10;

input_values.th_hx_pipe=0.05; % [m]

input_values.epsilon_w=0.9;

input_values.m_p_CaO=20; % [kg/s]
input_values.m_p_CaCO3=21.56; % [kg/s]

parameters.w_CaO=0.01;
parameters.w_CaCO3=0.01;

% d_p, delta_p and all other values except density are the same for CaO and CaCO3
input_values.d_p=0.0002;
input_values.delta_p=2.5e-6;
input_values.rho_p_CaCO3=1772.1;
input_values.rho_bed_CaCO3=1416.92;

input_values.rho_p_CaO=1600;
input_values.rho_bed_CaO=850;

% mass fraction of CaCO3 mass flow
input_values.m_frac_CaO=0.835;
input_values.m_frac_CaCO3=0.165;

input_values.m_CaO_mix=input_values.m_frac_CaO*input_values.m_p_CaCO3;
input_values.m_CaCO3_mix=input_values.m_frac_CaCO3*input_values.m_p_CaCO3;

input_values.rho_p_CaCO3_pure=1772.1;
input_values.rho_p_CaCO3=calc_rho_CaCO3_mf(input_values.m_CaO_mix, input_values.m_CaCO3_mix, input_values.rho_p_CaO, input_values.rho_p_CaCO3_pure);
input_values.rho_p_bed_CaCO3=1416.92;




input_values.phi_p=0.0077;
input_values.Cf=1.25;
input_values.f_zeta=1;
input_values.epsilon_bed=0.9;
input_values.C=2.8;
input_values.M=28.96;





save('Test_L_valve_01.mat', 'constants', 'input_values')

