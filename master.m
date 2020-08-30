% TEST

%% Heat conductivity

% calc_form_parameter_B
% C_f=1.25;
% f_zeta=1;
% psi=0.20042887;
% 
% B=calc_B(C_f, psi, f_zeta)

% calc_calc_N
% k_G=0.98903;
% k_rad=0.514638;
% k_p=30.093289;
% 
% N=calc_N(k_G, k_rad, k_p, B)

% % calc_porosity
% rho_p=1772.1;
% rho_bed=1416,92;
% 
% psi=calc_porosity(rho_p, rho_bed)

% % calc_k_p
% lambda_p=2;
% lambda_f=0.06646;
% 
% k_p=calc_k_p(lambda_p, lambda_f)

% %calc_k_c
% N=0.7695366;
% B=5.8153138;
% k_p=30.0932892;
% k_rad=0.514638;
% k_G=0.989030268;
% 
% k_c=calc_k_c(N, B, k_p, k_rad, k_G)

% %calc_k_bed
% psi=0.20042887;
% phi_p=0.0077;
% k_G=0.989030;
% k_rad=0.514638;
% k_p=30.0932892;
% k_c=10.46655856;
% 
% k_bed=calc_k_bed(psi, phi_p, k_G, k_rad, k_p, k_c)


% % calc_lambda_bed
% k_bed=9.605378;
% lambda_f=0.06646;
% 
% lambda_bed=calc_heat_conductivity_bed(k_bed, lambda_f)

% % calc_k_G
% l=2.21828e-6;
% d=2e-4;
% 
% k_G=calc_k_G(l, d)

% % calc_l
% gamma=0.570977867;
% R=8314;
% T=973.15;
% M=28.96;
% lambda_f=0.0665;
% p=1e5;
% c_pg=1137;
% 
% l=calc_l(gamma, R, T, M, lambda_f, p, c_pg)

% %calc_k_rad
% sigma=5.67e-8;
% epsilon=0.9;
% T=973.15;
% d=2e-4;
% lambda_f=0.06646;
% 
% k_rad=calc_k_rad(sigma, epsilon, T, d, lambda_f)

% % calc_gamma
% T=973.15;
% C=2.8;
% 
% gamma=calc_gamma(T, C)

% % calc_C_wbed
% sigma=5.67e-8;
% epsilon_w=0.9;
% epsilon_bed=0.9;
% 
% C_wbed=calc_C_wbed(sigma, epsilon_w, epsilon_bed)

% %calc_alpha_rad
% C_wbed= 4.63909e-8;
% T= 973.15;
% 
% alpha_rad=calc_alpha_rad(C_wbed, T)

% % calc_alpha_WP
% lambda_f= 0.06646;
% l=2.21828e-6;
% d=2e-4;
% delta=0.0000025;
% 
% alpha_WP=calc_alpha_WP(lambda_f, l, d, delta)

% calc_alpha_WS

% phi=0.8;
% alpha_WP=2.9855e+03;
% alpha_rad=171.0142;
% 
% alpha_WS= calc_alpha_WS(phi, alpha_WP, alpha_rad)


% %calc_alpha_beddry
% rho_bed=1416.92;
% lambda_bed=0.638373;
% c_bed=1235.7;
% t=62.5;
% 
% alpha_beddry = calc_alpha_beddry(rho_bed, lambda_bed, c_bed, t)


% % calc_alpha
% alpha_WS=2.5594e+03;
% alpha_beddry=150.8973;
% 
% alpha= calc_alpha(alpha_WS, alpha_beddry)

%% Coordination number binary mixture, non-cohesive

% % calc_S_p
% n_1=2000;
% n_2=3000;
% 
% S_p=calc_S_p(n_1, n_2)

% %calc_S_a
% 
% d_HTS=2;
% d_p=1;
% calc_S_a(S_p, d_HTS, d_p)

% calc_N_c12

% phi_C=32;
% % d_p=0.0002;
% % d_HTS=0.02;
% % 
% % delta_d=d_HTS/d_p
% % 
% % N_c12=calc_N_c12(phi_C, d_p, d_HTS)
% 
% 
% calc_N_c11(phi_C)
% 
% calc_N_c_mono_Nakagaki(0.26)

% psi_p=0.2594;
% N_c22=calc_N_c22(psi_p);

rho_HTS_bed=2000;
rho_HTS_solid=3940;


psi_HTS=calc_psi_HTS(rho_HTS_bed, rho_HTS_solid);
psi_p=0.2594;
N_c11=calc_N_c11(psi_HTS);
N_c22=calc_N_c22(psi_p);
% 

d_HTS=0.0002:0.0005:0.05;
d_p=0.0002;


phi_HTS=1:length(d_HTS);

for i=1:length(d_HTS)
    d_HTS_i=d_HTS(i);


n_1=2000;
n_2=30000000000;

X_d_i=d_HTS_i/d_p;
% 
N_c12=calc_N_c12(d_p, d_HTS_i, N_c11);
% 
N_c21=calc_N_c21(d_p, d_HTS_i, N_c22);
% 
V_HTS=4/3*pi*(d_HTS_i/2)^3;
V_p=4/3*pi*(d_p/2)^3;
% 
% n_1=0:200:1000;
% n_2=2000000;
% 
% Y_N=1:length(n_1);
% chi=1:length(n_1);
% 
% for i=1:length(n_1)
%     n_1_i=n_1(i);
%     
% 
% S_p=calc_S_p(n_1_i, n_2);
% 
% S_a=calc_S_a(S_p, d_HTS, d_p);
% N_c1=calc_N_c1(S_a, N_c12, N_c11);
% N_c2=calc_N_c2(S_a, N_c22, N_c21);
% 
% N_c_average=calc_N_c_average(S_p, N_c1, N_c2);
% 
% Y_V_i=calc_Y_V(n_1_i, n_2, V_HTS, V_p);
% 
% Y_V(i)=Y_V_i;
% 
% chi_i=calc_chi(Y_V_i, X_d);
% chi(i)=chi_i;
% 
% if i==length(n_1)
%     break
%    
% end
% end


%% TEST psi

Y_V=calc_Y_V(n_1, n_2, V_HTS, V_p);

d_fic=calc_d_fic(d_HTS_i, d_p);
h_fic=calc_h_fic(d_fic, d_p);
A_fic=calc_A_fic(h_fic, d_fic);
A_HTS=calc_A_HTS(d_HTS_i);

A_proj=calc_A_proj(d_HTS_i, d_fic, A_fic);

phi_HTS_i=calc_phi_HTS(A_proj, A_HTS, N_c12);
phi_HTS(i)=phi_HTS_i;

X_d(i)=X_d_i;

if i==length(d_HTS)
       break    


end
end
   plot(X_d, phi_HTS)