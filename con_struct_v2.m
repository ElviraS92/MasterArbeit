% constants
constants.sigma=5.67037e-8;
constants.R=8314.46;

%input_parameter
input_values.theta_bed_in=650;
input_values.theta_HTS_in=750;
input_values.p=1e5;

input_values.t=0.2;

input_values.n_1=2000;
%input_values.m_1=
input_values.d_HTS=0.01;
%input_values.delta_HTS=0;
input_values.epsilon_HTS=0.9;
input_values.rho_HTS_solid=3940; %3630+-70 Datenblatt Al2O3
input_values.rho_HTS_bed=2100; %2000-2100 Datenblatt Al2O3
input_values.n_2=500000000;
%input_values.m_2=
input_values.d_p=0.0002;
input_values.delta_p=2.5e-6;
input_values.rho_p_solid=1772.1;
input_values.rho_p_bed=1416.92;
input_values.phi_p=0.0077;
input_values.Cf=1.25;
input_values.f_zeta=1;
input_values.epsilon_bed=0.9;
input_values.C=2.8;
input_values.M=28.96;


save('Test_HTS_03.mat', 'constants', 'input_values')

