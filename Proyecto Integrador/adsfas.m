iabcs=out.iabcs;
vabcs=out.vabcs;
subplot(2,1,1)
plot(iabcs)
legend('i_{as}','i_{bs}','i_{cs}')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('A','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
subplot(2,1,2)
plot(vabcs)
legend('v_{as}','v_{bs}','v_{cs}')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('V','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on