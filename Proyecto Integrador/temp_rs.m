Rs_var=out.Rs;
Ts_var=out.Tsa;
subplot(2,1,1)
plot(Ts_var)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Temperatura [°C]','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])

grid on
subplot(2,1,2)
plot(Rs_var)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('\Omega ','FontWeight','bold','FontSize',12)
set(gcf,'color','white','Position',[255 69 708 597])

title('')
grid on