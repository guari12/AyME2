%%Funcion de transferencia
%syms Rs Lq2 Pp2 lamb Ld2 Lls2 Jm2 Jl2 r2 bm2 bl2
Rsref=1.02
Ts=50

Jlv=Jl-0.1260:0.01:Jl+0.126;
g=zeros(3,length(Jlv));
for i=1:length(Jlv)
%%Analisis estabilidad
%%
beq=(bm+bl/r^2);
Jeq1=(Jm+Jlv(i)/r^2);
sys_tf = tf(1, [Jeq1*Lq (Rs*Jeq1+Lq*beq) (3/2*Pp^2*lambda_m_r^2 + Rs*beq) 0]);
g(:,i)=pole(sys_tf);
end

%%Migracion de parametros
%%
figure
plot(g(2,1),'bo')
hold on 
plot(g(2,14),'mo')
plot(g(2,26),'ro')
plot(g(3,1),'bo')
plot(g(3,14),'mo')
plot(g(3,26),'ro')
plot(-0+0.1i,'k*')
title('Polos, variación J_{l}')
legend('J_{l}=0.126','J_{l}=0.2560','J_{l}=0.376')
xlabel('real','FontWeight','bold','FontSize',12)
ylabel('imag','FontWeight','bold','FontSize',12)
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
axis([ -95 5 -360 360])