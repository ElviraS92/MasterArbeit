% constants
constants.sigma=5.67037e-8;
constants.R=8314.46;

%input_parameter
%% Phase 1: Heat Transfer CaO -> HTS
input_values.theta_CaO_in_1=900;
input_values.theta_HTS_in_1=700;  % welche optimale Betriebstemperatur??
input_values.p=1e5;
input_values.t_1=5;

% input_values.n_HTS_1=1000; %1; Parameter!
% %input_values.m_HTS_1=


% input_values.d_HTS=0.001; Parameter!
%input_values.delta_HTS=0;
input_values.epsilon_HTS=0.3;
input_values.rho_HTS_solid=3940; %3630+-70 Datenblatt Al2O3
input_values.rho_HTS_bed=2100; %2000-2100 Datenblatt Al2O3

input_values.d_p=0.0002;
input_values.delta_p=2.5e-6;
input_values.rho_p_CaO=1600;
input_values.rho_p_bed_CaO=850;
input_values.phi_p=0.0077;
input_values.Cf=1.25;
input_values.f_zeta=1;
input_values.epsilon_bed=0.9;
input_values.C=2.8;
input_values.M=28.96;

% mass flow
input_values.m_CaO_1=20; % [kg/s]
input_values.n_CaO_1=(input_values.m_CaO_1/input_values.rho_p_bed_CaO)/(input_values.d_p^3*pi/6);



%% Phase 3: Heat Transfer HTS -> CaCO3

input_values.theta_CaCO3_in_3=650;
%input_values.theta_HTS_in_3=750; theta_HTS_in_3=theta_HTS_out_1 (keine Wärmeverluste)
input_values.p=1e5;
input_values.t_3=5;

% input_values.n_HTS_3=1000;

% material/geometric values stay the same for HTS in Phase 3
% input_values.m_HTS=
% input_values.d_HTS=0.01;
% input_values.delta_HTS=0;
% input_values.epsilon_HTS=0.9;
% input_values.rho_HTS_solid=3940; %3630+-70 Datenblatt Al2O3
% input_values.rho_HTS_bed=2100; %2000-2100 Datenblatt Al2O3

% input_values.n_CaCO3_3=70000;
% input_values.m_CaCO3_3=
% input_values.d_p=0.0002; %Annahme: d_p von CaO und CaCO3 identisch
% input_values.delta_p=2.5e-6;  %Annahme: delta_p von CaO und CaCO3 identisch

% input_values.phi_p=0.0077;
% input_values.Cf=1.25;
% input_values.f_zeta=1;
% input_values.epsilon_bed=0.9;
% input_values.C=2.8;
% input_values.M=28.96;




% mass flow
input_values.m_CaCO3_3=21.56; % [kg/s]


% mass fraction of CaCO3 mass flow
input_values.m_frac_CaO_3=0.835;
input_values.m_frac_CaCO3_3=0.165;

input_values.m_CaO_mix=input_values.m_frac_CaO_3*input_values.m_CaCO3_3;
input_values.m_CaCO3_mix=input_values.m_frac_CaCO3_3*input_values.m_CaCO3_3;

input_values.rho_p_CaCO3_pure=1772.1;
input_values.rho_p_CaCO3=calc_rho_CaCO3_mf(input_values.m_CaO_mix, input_values.m_CaCO3_mix, input_values.rho_p_CaO, input_values.rho_p_CaCO3_pure);
input_values.rho_p_bed_CaCO3=1416.92;

input_values.n_CaCO3_3=(input_values.m_CaCO3_3/input_values.rho_p_bed_CaCO3)/(input_values.d_p^3*pi/6);

save('Test_HTS_06.mat', 'constants', 'input_values')

