vq_idn1=out.vq
Tm_idn1=out.T
plot(Tm_ido)
hold on
plot(Tm_id1)
plot(Tm_idn1)
legend('T_{T}, i^{r}_{ds}=0','T_{T}, i^{r}_{ds}=1','T_{T}, i^{r}_{ds}=-1')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Torque [N.m]','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
%%
figure 

plot(vq_id0)
hold on
plot(vq_id1)
plot(vq_idn1)
legend('v^{r}_{qs}, i^{r}_{ds}=0','v^{r}_{qs}, i^{r}_{ds}=1','v^{r}_{qs}, i^{r}_{ds}=-1')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Voltaje [V]','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on