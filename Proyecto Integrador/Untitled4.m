beq=(bm+bl/r^2);
Jeq=(Jm+Jl/r^2);
Kt=(3/2*Pp*lambda_m_r);
C=[1 0 0];
Rs=1.02
A=[-Rs/Lq  -(Pp/Lq)*lambda_m_r 0;
    3/2*Pp*lambda_m_r/Jeq  -beq/Jeq 0;
    0  1 0];
B=[1/Lq 0 ;0 -1/(Jeq*r) ; 0 0 ];
D=[0 0 ];
%%Analisis estabilidad
%%
sys_dc = ss(A,B,C,D)
sys_tf = tf(sys_dc)
opt = stepDataOptions;
opt.StepAmplitude = 19.596;
step(sys_tf,(0:0.0001:1)', opt);

dd=stepinfo(sys_tf)