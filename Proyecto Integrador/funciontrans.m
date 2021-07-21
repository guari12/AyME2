%%Funcion de transferencia
%syms Rs Lq2 Pp2 lamb Ld2 Lls2 Jm2 Jl2 r2 bm2 bl2
Rsref=1.02


Jlv=[Jl-0.1260 Jl Jl+0.126];
%blv=[-0.63 0 0.63];
% g=zeros(3,length(Jlv));
% for i=1:length(Jlv)
% %%Analisis estabilidad
% %%
% Jeq1=(Jm+Jlv(i)/r^2);
% sys_tf = tf(1,[Jeq1 ba+bl/r^2 ksa ksia]);
% g(:,i)=pole(sys_tf);
% % pzmap(sys_tf,'o')
% % hold on
% end
sys_tf = tf(1, [Jeq*Lq (Rs*Jeq+Lq*beq) (3/2*Pp^2*lambda_m_r^2 + Rs*beq) 0]);
s1=tf(1,[Lq/Kiq 1]);
s2=tf(1,[Jeq ba+bl/r^2 ksa ksia]);
g=pole(sys_tf)
g2=pole(s1)
g3=pole(s2)

%%Migracion de parametros
%%
figure
plot(real(g(1,1))+0.01i,'rx')

hold on 
plot(real(g2(1,1))+0.01i,'bx')
plot(real(g3(1,1))+0.01i,'kx')
plot(g(2,1),'rx')
plot(g(3,1),'rx')
% 
% plot(g2(2,1),'bx')
% plot(g2(3,1),'bx')

plot(g3(2,1),'kx')
plot(g3(3,1),'kx')

grid on

legend('Polos planta original','Polos lazos de corriente','Polos controlador')
xlabel('real','FontWeight','bold','FontSize',12)
ylabel('imag','FontWeight','bold','FontSize',12)
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
