close all
clear all
%% Euler angles definition - Task 1
syms alpha beta gamma real

A_1(alpha)=[cos(alpha) -sin(alpha) 0;sin(alpha) cos(alpha) 0;0 0 1];
A_2(beta)=[1 0 0;0 cos(beta) -sin(beta);0 sin(beta) cos(beta)];
A_3(gamma)=[cos(gamma) -sin(gamma) 0;sin(gamma) cos(gamma) 0;0 0 1];

A = A_1(alpha)*A_2(beta)*A_3(gamma);

alpha = pi/4;
beta = pi/4;
gamma = pi/4;

E_A = [alpha beta gamma];

A = A_1(alpha)*A_2(beta)*A_3(gamma)

%% Euler angles & Euler parameters - Task 2 

alpha= pi/2;
beta=pi/6;
gamma=-pi/2;

E_A = [alpha beta gamma];

e_0= cos(1/2*(alpha+gamma))*cos(1/2*beta);
e_1= cos(1/2*(alpha-gamma))*sin(1/2*beta);
e_2= sin(1/2*(alpha-gamma))*sin(1/2*beta);
e_3= sin(1/2*(alpha+gamma))*cos(1/2*beta);

E_P = [e_0 e_1 e_2 e_3];


%% Assuming q = q(t), Evaluation of C(dot) - Task 3 

syms x y z phi1 phi2 phi3 t d_x d_y d_z d_phi1 d_phi2 d_phi3 


q=[x;y;z;phi1;phi2;phi3];
d_q = [d_x;d_y;d_z;d_phi1;d_phi2;d_phi3];
C=[x^2+y+sqrt(z)+sin(phi1);x*y+x*z+y*sin(phi3)+t^3;sin(phi2)+x^(3/2)+t];
C_q=jacobian(C,q);
C_t = diff(C,t);
d_C=C_q*d_q+C_t

%% Assuming q = q(t), Evaluation of C(double dot) - Task 3 

syms dd_x dd_y dd_z dd_phi1 dd_phi2 dd_phi3 

C_tt = diff(C_t,t);
dd_q = [dd_x;dd_y;dd_z;dd_phi1;dd_phi2;dd_phi3];
T=jacobian(C_q*d_q,q);
Cq_t=diff(C_q,t);

dd_C=C_q*dd_q+T*d_q+2*Cq_t*d_q+C_tt;




