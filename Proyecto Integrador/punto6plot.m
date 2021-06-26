
Id0=0.5;
plot(theta_m)
hold on
plot(omega_m)

xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('[rad/s] [rad]','FontWeight','bold','FontSize',12)
legend('\theta_{m}','\omega_{m}')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on