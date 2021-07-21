sys_tf = tf(sys_dc)
sys_zpk = zpk(sys_dc)
a=pole(sys_tf)
figure
plot(real(a(1,1))+0.01i,'rx')

hold on 
plot(a(2,1),'rx')
plot(a(3,1),'rx')


grid on
xlabel('real','FontWeight','bold','FontSize',12)
ylabel('imag','FontWeight','bold','FontSize',12)
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)