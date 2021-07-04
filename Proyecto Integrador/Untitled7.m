th_e=out.theta_encoder;
th_o=out.theta_observada;
plot(th_e);
hold on
plot(th_o);
legend('\theta_{encoder}','\theta_{obs}')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)

grid on