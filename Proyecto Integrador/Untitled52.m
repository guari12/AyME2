Tmotor_final=out.Tm;
iq_final=out.iq;
id_final=out.id;
vq_final=out.vq;
vd_final=out.vd;
ts_final=out.Ts;

subplot(2,2,1)
plot(Tmotor_final)

legend('T^{*}_{q}')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('N.m','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on

subplot(2,2,2)
plot(iq_final)
hold on
plot(id_final)
legend('i^{r}_{qs}','i^{r}_{ds}')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('A','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
subplot(2,2,3)
plot(vq_final)
hold on
plot(vd_final)
legend('v^{r}_{qs}','v^{r}_{ds}')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('V','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
subplot(2,2,4)
plot(ts_final)

legend('T_{s}')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('°C','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on