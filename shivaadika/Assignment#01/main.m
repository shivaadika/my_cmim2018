vstd = @(x)3*x^2*exp(x^3);
vvec = @(x)3.*x.^2.*exp(x.^3);

low_limit = 0;
up_limit = 1;
no_div = 10000;

V = @(x)exp(x^3);
exact = V(1) - V(0);

f_handler = @() integral_trapezoid(vstd, low_limit, up_limit, no_div); 
t1 = time_and_print(f_handler, exact); 

f_handler = @() integral_trapezoid(vvec, low_limit, up_limit, no_div); 
t2 = time_and_print(f_handler, exact); 


f_handler = @() integral_trapezoid_speed(vvec, low_limit, up_limit, no_div); 
t3 = time_and_print(f_handler, exact); 

disp(['Code speedup: ', num2str(t1/t3)])

