


subplot(2,2,[1,2])
plot(theta_o)
hold on
plot(theta_e)
plot(theta_c,'m')
plot(theta_e_jlmax)
plot(theta_e_jlmin)
legend('\theta_{l_{enc}}','\theta_{l_{obs}}','\theta_{l_{consigna}}','\theta_{l_{enc}}; J_{l_{max}}','\theta_{l_{enc}}; J_{l_{min}}')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on

subplot(2,2,3)
plot(theta_o)
hold on
plot(theta_e)
plot(theta_c,'m')
plot(theta_e_jlmax)
plot(theta_e_jlmin)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
subplot(2,2,4)
plot(theta_o)
hold on
plot(theta_e)
plot(theta_c,'m')
plot(theta_e_jlmax)
plot(theta_e_jlmin)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
