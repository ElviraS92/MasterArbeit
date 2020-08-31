% % Optimization: HTS Model

% call input_values and constants for calcutlation
con_struct_HTS;

% Objective Function
objective = @(x) -1*(execute_HTS(x)); % -1, maximum T_CaCO3_out

% Initial Guess with x0=[d_HTS=x(1), n_HTS=x(2), t_res=x(3)]
x0=[0.01, 100, 600];

% linear constraints
A=[];
b=[];
Aeq=[];
beq=[];

% lower and upper bound
lb(1)=0.005;    % min. diameter for HTS
lb(2)=1;        % min. number of HTS
lb(3)=1;        % min. residence time

ub(1)=0.100;
ub(2)=Inf;
ub(3)=1200;     % 20 min

%non-linear constraints
nonlincon=@nlcon_HTS;


[x,fval,ef,output,lambda]=fmincon(objective,x0,A,b,Aeq,beq,lb,ub,nonlincon);

max_opt=-fval;