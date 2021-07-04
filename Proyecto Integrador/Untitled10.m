
subplot(2,2,[1,2])
plot(wm_consigna);
hold on
plot(wm_teorica);
plot(wm_teorica_w9000);
plot(wm_teorica_w8000);

legend('\omega_{consigna}','\omega_{l}; \omega_{sensores}=inf','\omega_{l}; \omega_{i}=9000; \omega_{\theta}=8000 ','\omega_{l}; \omega_{i}=8000; \omega_{\theta}=8000 ')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad/s','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)

grid on
subplot(2,2,[3])
plot(wm_consigna);
hold on
plot(wm_teorica);
plot(wm_teorica_w9000);
plot(wm_teorica_w8000);

xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad/s','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)

grid on
subplot(2,2,[4])
plot(wm_consigna);
hold on
plot(wm_teorica);
plot(wm_teorica_w9000);
plot(wm_teorica_w8000);

xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad/s','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)

grid on

figure
subplot(2,2,[1,2])
plot(theta_consigna);
hold on
plot(theta_teorica);
plot(theta_teorica_w9000);
plot(theta_teorica_w8000);


legend('\theta_{consigna}','\theta_{l}; \omega_{sensores}=inf','\theta_{l}; \omega_{i}=9000; \omega_{\theta}=8000 ','\theta_{l}; \omega_{i}=8000; \omega_{\theta}=8000 ')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
subplot(2,2,[3])
plot(theta_consigna);
hold on
plot(theta_teorica);
plot(theta_teorica_w9000);
plot(theta_teorica_w8000);


xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
subplot(2,2,[4])
plot(theta_consigna);
hold on
plot(theta_teorica);
plot(theta_teorica_w9000);
plot(theta_teorica_w8000);


xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)

grid on