function [actual_th1_dd,actual_th2_dd]= fcn(T1, T2,des_th1_dd,des_th1_d,des_th2_dd,des_th2_d,des_th1,des_th2)



N=1;
jm1=0.01;
jm2=0.01;
cm1=0.1;
cm2=0.1;
M1=1;
M2=0.5;
L1=2;
L2=1;
g=9.8;

th1=des_th1
th2=des_th2
th1dd=des_th1_dd
th1d=des_th1_d
th2dd=des_th2_dd
th2d=des_th2_d

M=[((M1+M2)*(L1^2)+ (M2*L2^2)+ (2*M2*L1*L2*cos(th2)))  (M2*L2^2+ M2*L1*L2*cos(th2));
   (M2*L2^2+M2*L1*L2*cos(th2))                   (M2*L2^2)];


V=[((-M2*L1*L2)*(2*th1d*th2d+th2d^2)*sin(th2));
   (M2*L1*L2*th1d^2*sin(th2))];




 G= [((M1+M2)*g*L1*cos(th1)+M2*g*L2*cos(th1+th2));
     M2*g*L2*cos(th1+th2)];
 
 Tt1= N*T1 -N^2* jm1*des_th1_dd -N^2*cm1 *des_th1_d
 Tt2= N*T2 -N^2* jm2*des_th2_dd -N^2*cm2 *des_th2_d
 
NJ=[N*jm1 0;
   0 N*jm2]

NT=[N*T1;
N*T2]

NC=[N*cm1 0;
0 N*cm2]

thd=[des_th1_d;
des_th1_d]


actual_th_dd= inv(M+NJ) *(NT -V- G-(NC*thd));
v= actual_th_dd(1)
w=actual_th_dd(2)

actual_th1_dd=v
actual_th2_dd=w
