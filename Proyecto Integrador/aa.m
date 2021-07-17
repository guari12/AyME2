ia=out.ia;
ib=out.ib;
ic=out.ic;
subplot(2,2,[1,2])
plot(ia)
hold on
plot(ib)
plot(ic)
legend('i_{a}','i_{b}','i_{c}')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('A','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on

subplot(2,2,3)
plot(ia)
hold on
plot(ib)
plot(ic)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('A','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
subplot(2,2,4)
plot(ia)
hold on
plot(ib)
plot(ic)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('A','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
