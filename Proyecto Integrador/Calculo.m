%%Funcion de transferencia
%syms Rs Lq2 Pp2 lamb Ld2 Lls2 Jm2 Jl2 r2 bm2 bl2
Rsref=1.02
Ts=50

Rs=Rsref*(1+alfa_cu*(Ts-40))
beq=(bm+bl/r^2);
Jeq=(Jm+Jl/r^2);
Kt=(3/2*Pp*lambda_m_r);
C=[0 0 0 1];
A=[-Rs/Lq 0 -(Pp/Lq)*lambda_m_r 0;
    0 -Rs/Ld 0 0;
    3/2*Pp*lambda_m_r/Jeq 0 -beq/Jeq 0;
    0 0 1 0];
B=[1/Lq 0; 0 0;0 -1/r; 0 0];
D=[0 0];
%%Analisis estabilidad
%%
sys_dc = ss(A,B,C,D)
sys_tf = tf(sys_dc)
sys_zpk = zpk(sys_dc)
pole(sys_tf)
pzmap(sys_tf)
%%Analisis Controlabilidad
%%
Co = ctrb(sys_dc)
unco = length(A) - rank(Co)
[Abar,Bbar,Cbar,T,k] = ctrbf(A,B,C)
%%Analisis Observabilidad
%%
Ob = obsv(sys_dc)
% Number of unobservable states
unob = length(A)-rank(Ob)
[Abar1,Bbar1,Cbar1,T1,k1] = obsvf(A,B,C) 
%G=C*inv([s*eye(5,5) -A])*B+D
%[b,a]=ss2tf(A,B,C,D,2)
%%
%roots(a)

%%Punto 6.a
%%
Vqsnom=19.596
tstep1=0.1
tstep4=0.7

Tlmax=6.28
tstep2=0.3
tstep3=0.5
tstep5=0.9

%%Punto 2.b
%%
ba=0.0113;
ksa=9.04;
ksia=2892.8;

Jlv=Jl-0.1260:0.01:Jl+0.126;
figure(2)
for i=1:length(Jlv)
    
    Jeq1=(Jm+Jlv(i)/r^2);
    a=tf(1,[1 ba/Jeq1 ksa/Jeq1 ksia/Jeq1]);
    hold on
    pzmap(a)

end
%%Punto 3.b
%%
Koth=6400;
Kow=3200^2;