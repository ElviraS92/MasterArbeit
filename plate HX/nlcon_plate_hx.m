function [c, ceq] = nlcon_plate_hx(x)
%NLCON Summary of this function goes here
%   Detailed explanation goes here

% call input_values for calculation
con_struct_plate_hx;

T_ms_3=input_values.theta_ms_in_1+273.15; % estimated mean value for molten salt in phase 3

hx_type=parameters.hx_type;
width_plate=input_values.width_plate;
s_plates_ms=input_values.s_plate_ms;

d_h=calc_d_h(input_values.s_plate_ms);

theta_CaO_in_1=input_values.theta_CaO_in_1;
theta_ms_in_1=input_values.theta_ms_in_1;

T_CaO_in_1=theta_CaO_in_1+273.15;
T_ms_in_1=theta_ms_in_1+273.15;

T_ms_1=calc_T(T_CaO_in_1, T_ms_in_1);
rho_ms_1=calc_rho_ms(T_ms_1);

rho_ms_3=calc_rho_ms(T_ms_3);
eta_ms_3=calc_eta_ms(constants.R, T_ms_3);
ny_ms_3=calc_ny_ms(eta_ms_3, rho_ms_3);

w_bed_CaCO3=input_values.w_bed_CaCO3;

% height_hx=calc_height_hx(parameters.t_res, input_values.w_bed_CaCO3);

% height_hx=t_res*w_bed;

% height_plate=height_hx/hx_type;

% A_cs_ms_1ch=s_plates_ms*height_plate;
% 
% 
% m_cs_ms_1ch_3=rho_ms_1*w_ms_1*A_cs_ms_1;
% 
% w_ms_3=m_cs_ms_1ch_3/(rho_ms_3*A_cs_ms_1ch);
% 
% Re_d=w_ms_3*d_h/ny_ms;
% 
% lambda_fric=96/Re_d;

delta_p_ms=(96/(((rho_ms_1*x(1)*(s_plates_ms*((x(2)*w_bed_CaCO3)/hx_type)))...
    /(rho_ms_3*(s_plates_ms*((x(2)*w_bed_CaCO3)/hx_type))))*d_h/ny_ms_3))*width_plate*((rho_ms_1*x(1)*(s_plates_ms*((x(2)*w_bed_CaCO3)/hx_type)))/(rho_ms_3*(s_plates_ms*((x(2)*w_bed_CaCO3)/hx_type))))^2*rho_ms_3/(2*d_h);

% delta_p_ms=lambda_fric*width_plate*w_ms^2*rho_ms/(2*d_h);

%non-linear constraints
c = (96/(((rho_ms_1*x(1)*(s_plates_ms*((x(2)*w_bed_CaCO3)/hx_type)))...
    /(rho_ms_3*(s_plates_ms*((x(2)*w_bed_CaCO3)/hx_type))))*d_h/ny_ms_3))...
    *width_plate*((rho_ms_1*x(1)*(s_plates_ms*((x(2)*w_bed_CaCO3)/hx_type)))/(rho_ms_3*(s_plates_ms*((x(2)*w_bed_CaCO3)/hx_type))))^2*rho_ms_3/(2*d_h)...
    -5000; %5000 Pa max. pressure loss

ceq = [];



end

