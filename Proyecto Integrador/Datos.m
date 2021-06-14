%% Carga Mecanica
Jl = 0.2520 ;   %kg.m2      % +-
bl = 0 ;        %Nms / rad  % +-

Tl_carga = 0 ;    %Nm         % +- (escalon)

%% Tren de Transmision
r = 314.3008; %Relacion de reduccion total

nl_nom = 21; %rpm
wl_nom = 2.2; %rad/s
Tq_nom = 7.26; %Nm
Tq_max = 29.42; %Nm

%% Subsistema Mecanico
Jm = 3.1 * 10^(-6);     %kg.m2 Momento inercia motor y caja
bm = 1.5 * 10^(-5);     %Nms / rad

%% Subsistema Electromagnetico
Pp = 3; %Pares de polos
lambda_m_r = 0.01546; %Wb-t

Lq = 5.8e-3; %mH
Ld = 6.6e-3; %mH
Lls = 0.8e-3; %mH

%Rs = 1.02; % Rs ? 1.02 ? (@40°C) ? 1.32 ? (@115°C)

%% Subsistema Termico
alfa_cu = 3.9 * 10^(-3);
Cts = 0.818;
Rts_amb = 146.7;
tau_ts_amb = 120;

%% Condiciones de operacion
nm_nom = 6600; %rpm
wm_nom = 691.15; %rad/s

Vsl_nom = 24; %Vca_rms
Vsf_nom = Vsl_nom/(3^0.5); %tension de fase

Is_nom = 0.4; %regimen continuo
Is_max = 2.0; %pico
Id0=0.5;


%% Lazo de control
Kid=5000*Ld;
Kiq=5000*Lq;

%%Funcion de transferencia
%syms Rs Lq2 Pp2 lamb Ld2 Lls2 Jm2 Jl2 r2 bm2 bl2
Rsref=1.02
Ts=50

Rs=Rsref*(1+alfa_cu*(Ts-40))
beq=(bm+bl/r^2);
Jeq=(Jm+Jl/r^2);
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
