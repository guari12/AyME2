Tm_vdn05_LTI=out.Tmotor;
%%
t=0:1/length(torque):1;
subplot(2,2,[1,2])
plot(t(1:end-1),Tm_vd0)
hold on
plot(t(1:end-1),Tm_vd05_LTI)
plot(t(1:end-1),Tm_vdn05_LTI)
legend('T_{m}(t) , v^{r}_{ds}=0','T_{m}(t), v^{r}_{ds}=1.9596','T_{m}, v^{r}_{ds}=-1.9596')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Torque [N.m]','FontWeight','bold','FontSize',12)
subplot(2,2,3)
plot(t(1:end-1),Tm_vd0)
hold on
plot(t(1:end-1),Tm_vd05_LTI)
plot(t(1:end-1),Tm_vdn05_LTI)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Torque [N.m]','FontWeight','bold','FontSize',12)
subplot(2,2,4)
plot(t(1:end-1),Tm_vd0)
hold on
plot(t(1:end-1),Tm_vd05_LTI)
plot(t(1:end-1),Tm_vdn05_LTI)
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Torque [N.m]','FontWeight','bold','FontSize',12)