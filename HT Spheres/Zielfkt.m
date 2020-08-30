% Zielfunktion aufstellen für Modell HTS

%Ziel: T_CaCO3_out_3 soll maximal werden

% f = @(x,y) x.*exp(-x.^2-y.^2)+(x.^2+y.^2)/20;
% fsurf(f,[-2,2],'ShowContours','on')
% 
% fun = @(x) f(x(1),x(2));
% 
% x0 = [-.5; 0];
% 
% options = optimoptions('fminunc','Algorithm','quasi-newton');
% options.Display = 'iter';
% 
% [x, fval, exitflag, output] = fminunc(fun,x0,options);
% 
% uncx = x;
% uncf = fval;
% 
% output.funcCount;

% 
% f = @(x)bowlpeakfun(x,a,b,c)
% 
% x0 = [-.5; 0];
% options = optimoptions('fminunc','Algorithm','quasi-newton');
% [x, fval] = fminunc(f,x0,options)


% call for input_values
a = 2;
b = 3;
c = 10;

% problem and constraints
% Plates
f = @(x,y) x.*exp(-x.^2-y.^2)+(x.^2+y.^2)/20;
g = @(x,y) x.*y/2+(x+2).^2+(y-2).^2/2-2;

% Initial guess, starting point
x0 = [-.5; 0];

% Optimization
options = optimoptions('fminunc','Algorithm','quasi-newton');

