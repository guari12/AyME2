vq_idn1=out.vq
Tm_idn1=out.T
plot(Tm_ido)
hold on
plot(Tm_id1)
plot(Tm_idn1)
legend('T_{T}, i^{r*}_{ds}=0','T_{T}, i^{r*}_{ds}=1','T_{T}, i^{r*}_{ds}=-1')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Torque [N.m]','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on
x_r = 0.5; y_r = 0.026265; w_r = 0.02; h_r = 0.002;
rectangle('Position', [x_r-w_r/2, y_r-h_r/2, w_r, h_r], ...
'EdgeColor', [0, 0,0], 'LineWidth',2);
x_a = 0.58; y_a = 0.18; w_a = 0.3; h_a = 0.3;
ax = axes('Units', 'Normalized', ...
'Position', [x_a, y_a, w_a, h_a], ...
'XTick', [], ...
'YTick', [], ...
'Box', 'on', ...
'LineWidth', 2, ...
'Color', [1, 1, 1]);
hold on;
plot(Tm_ido)
hold on
plot(Tm_id1)
plot(Tm_idn1)
grid on
xlabel('Detail at X==0.5');
axis([x_r-w_r/2, x_r+w_r/2, y_r-h_r/2, y_r+h_r/2]);
%%
figure 

plot(vq_id0)
hold on
plot(vq_id1)
plot(vq_idn1)
legend('v^{r}_{qs}, i^{r*}_{ds}=0','v^{r}_{qs}, i^{r*}_{ds}=1','v^{r}_{qs}, i^{r*}_{ds}=-1')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('Voltaje [V]','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)
grid on