% TEST chi von volumenverhältnis bzw. mischungsverhältnis n_1, n_2


rho_HTS_bed=2000;
rho_HTS_solid=3940;


psi_HTS=calc_psi_HTS(rho_HTS_bed, rho_HTS_solid);
psi_p=0.2594;
N_c11=calc_N_c11(psi_HTS);
N_c22=calc_N_c22(psi_p);
% 
d_HTS=0.02;
d_p=0.0002;

X_d=d_HTS/d_p;
% 
N_c12=calc_N_c12(d_p, d_HTS, N_c11);
% 
N_c21=calc_N_c21(d_p, d_HTS, N_c22);

V_HTS=4/3*pi*(d_HTS/2)^3;
V_p=4/3*pi*(d_p/2)^3;

n_1=0:200:1000;
n_2=2000000;

Y_N=1:length(n_1);
chi=1:length(n_1);

for i=1:length(n_1)
    n_1_i=n_1(i);
    

S_p=calc_S_p(n_1_i, n_2);

S_a=calc_S_a(S_p, d_HTS, d_p);
N_c1=calc_N_c1(S_a, N_c12, N_c11);
N_c2=calc_N_c2(S_a, N_c22, N_c21);

N_c_average=calc_N_c_average(S_p, N_c1, N_c2);

Y_V_i=calc_Y_V(n_1_i, n_2, V_HTS, V_p);

Y_V(i)=Y_V_i;

chi_i=calc_chi(Y_V_i, X_d);
chi(i)=chi_i;

if i==length(n_1)
    break
   
end
end


