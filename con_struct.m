% constants
constants.sigma=5.67037e-8;
constants.R=8314.46;

%input_parameter
input_values.theta_bed_in=650;
input_values.theta_HTS_in=750;
input_values.p=1e5;
input_values.t=360;
input_values.n_1=1e6;
%input_values.m_1=
input_values.d_HTS=0.05;
%input_values.delta_HTS=0;
input_values.epsilon_HTS=0.9;
input_values.rho_HTS_solid=3940; %3630+-70 Datenblatt Al2O3
input_values.rho_HTS_bed=2100; %2000-2100 Datenblatt Al2O3
input_values.n_2=20;
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



% table values (lookup table)
table_values.c_HTS=1240; % cp(600°C)=1214.92; cp(727°C)=1235.106, cp(800°C)=1249.819
table_values.c_p=1235.7;
table_values.c_bed=1235.7;
table_values.c_pg=1137;
table_values.lambda_p=2;
table_values.lambda_f=0.06646;

save('Test_HTS_02.mat', 'constants', 'input_values', 'table_values')

