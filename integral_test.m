% Integralprobe
alpha_area=calc_values.alpha_beddry*input_values.t;

t=input_values.t;

fun_alpha_beddry= @(t) (2*1/sqrt(pi))*(sqrt(input_values.rho_p_bed*calc_values.lambda_bed*calc_values.lambda_bed)./sqrt(t));
int_fun=integral(fun_alpha_beddry, 0, 0.2);

alpha_int=1/(1/calc_values.alpha_WS+1/int_fun);

alpha_area_int=alpha_int*t;



