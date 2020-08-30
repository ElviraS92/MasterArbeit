function [chi] = calc_chi_plot(n_1, n_2, N_c22, N_c_average)
%CALC_CHI Summary of this function goes here
% Selbsterfundener Zusammenhang!!!! TEST

for i=1:length(Y_V_vector)
    
chi_i=(N_c22*n_2(i))/(N_c_average*(n_1(i)+n_2(i)));

if i==length(Y_V_vector)
    break
end
end

