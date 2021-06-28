t=0:1/length(torque):1;
Tm_vdn05_NL=out.Tmotor
subplot(2,2,[1,2])
plot(t(1:end-1),Tm_vd0)
hold on
plot(t(1:end-1),Tm_vd05_NL)
plot(t(1:end-1),Tm_vdn05_NL)
legend('T_{m}(t) , v^{r}_{ds}=0','T_{m}(t), v^{r}_{ds}=1.9596','T_{m}, v^{r}_{ds}=-1.9596')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Torque [N.m]','FontWeight','bold','FontSize',12)
grid on
subplot(2,2,3)
plot(t(1:end-1),Tm_vd0)
hold on
plot(t(1:end-1),Tm_vd05_NL)
plot(t(1:end-1),Tm_vdn05_NL)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Torque [N.m]','FontWeight','bold','FontSize',12)
grid on
subplot(2,2,4)
plot(t(1:end-1),Tm_vd0)
hold on
plot(t(1:end-1),Tm_vd05_NL)
plot(t(1:end-1),Tm_vdn05_NL)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Torque [N.m]','FontWeight','bold','FontSize',12)
grid on
set(gcf,'color','white','Position',[255 69 708 597])
figure
w_vd05_NL=out.wm_id0_NL
t=0:1/length(w_vd05_NL):1;
plot(t(1:end-1),w_vd0)
hold on
plot(t(1:end-1),w_vd05_NL)
plot(t(1:end-1),w_vdn05_NL)

legend('\omega_{m}(t) , v^{r}_{ds}=0','\omega_{m}(t), v^{r}_{ds}=1.9596','\omega_{m}(t), v^{r}_{ds}=-1.9596')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Velocidad [rad/s]','FontWeight','bold','FontSize',12)
grid on
set(gcf,'color','white','Position',[255 69 708 597])
