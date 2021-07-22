Ts2=out.Ts;
plot(Ts1)
hold on
plot(Ts2)
legend('Ts, i^{r}_{ds}=-0.4','Ts, i^{r}_{ds}=0')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('A','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on