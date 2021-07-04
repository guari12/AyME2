t=0:0.0001:18-0.0001;
q=zeros(1,length(t)*6);
qd=zeros(1,length(t)*6);
for i =1:1:6
[q(1+(length(t))*(i-1):(length(t))*(i)),qd(1+(length(t))*(i-1):(length(t))*(i))]=trapveltraj([0 2*pi 2*pi 0],length(t),'PeakVelocity',1.13,'EndTime',[ 6 6 6 ]);
end
t=0:0.0001:108-0.0001;
q_out=timeseries(qd,t,'name','posicion')
q_out2=timeseries(q,t,'name','posicion')

plot(t,q,t,qd);
legend('q_{1}','dq_{1}/dt')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad, rad/s, rad/s^{2}','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)

grid on