% % Optimization: Plate HX with Molten Salt - Model

% call input_values and constants for calcutlation
con_struct_plate_hx;

 

% Objective Function
objective = @(x) -1*(execute_plate_hx(x)); % -1, maximum T_CaCO3_out

% Initial Guess with x0=[w_ms=x(1), t_res=x(2)]
x0=[0.3, 1000];

% linear constraints
% A=[0 input_values.w_bed_CaO; 0 0];
% b=[10, 0];
A=[];
b=[];

Aeq=[];
beq=[];

% height_hx=t_res*w_bed;
% -> t_res<height_hx/w_bed

% lower and upper bound
lb(1)=0.1;      % min. velocity w_ms_1
lb(2)=1;        % min. residence time
% lb(3)=1;      % 

ub(1)=0.5;
ub(2)=Inf;      % max. residence time
% ub(3)=1;     

% nonlincon=@nlcon_plate_hx;

[x,fval,ef,output,lambda]=fmincon(objective,x0,A,b,Aeq,beq,lb,ub,nonlincon);

max_opt=-fval;

