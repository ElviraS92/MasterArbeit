% Input values for Assignment taken from VDI Heat Atlas

% constants
constants.sigma=5.67037e-8;
constants.R=8314.46;

%input_parameter
input_values.theta_bed_in=15;
input_values.theta_plate_in=100;
input_values.p=1e5;

input_values.t=62.5;

input_values.phi=0.8;

input_values.height_plate=0.70711;
input_values.width_plate=0.70711;
input_values.n_plates_row=35;
input_values.n_rows=4;
input_values.epsilon_w=0.9;

input_values.m_Weizen=8.333;
input_values.d_p=0.002;
input_values.delta_p=0;
input_values.rho_p_solid=1772.1;
input_values.rho_p_bed=800;
input_values.phi_p=0.0077;
input_values.Cf=1.25;
input_values.f_zeta=1;
input_values.epsilon_bed=0.9;
input_values.C=2.8;
input_values.M=28.96;


save('Test_VDI_01.mat', 'constants', 'input_values')

