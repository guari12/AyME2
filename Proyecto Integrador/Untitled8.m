
subplot(2,1,1)
plot(ts_1)

xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('°C','FontWeight','bold','FontSize',12)
title('Temperatura sin debilitamiento de campo')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on

subplot(2,1,2)
plot(ts_2)

xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('°C','FontWeight','bold','FontSize',12)
title('Temperatura con debilitamiento de campo')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
