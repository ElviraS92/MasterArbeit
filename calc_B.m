function [B] = calc_B(C_f, psi, f_zeta)
%calc_B         B       - deformation parameter B
%               C_f     - form factor C_f
%               psi     - flattening coefficient
%               f_zeta  - distribution function of particle size (PSD)
%-
B = C_f*((1-psi)/psi)^(10/9)*f_zeta;

