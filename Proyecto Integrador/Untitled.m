t=0:0.0001:405-0.0001;
t1=0:0.0001:5-0.0001;
% [q,qd,qdd]=trapveltraj([0 2*pi 2*pi 0],length(t),'PeakVelocity',1.5,'EndTime',[ 5 5 5 ]);
q=zeros(1,length(t));
q1=zeros(1,length(t1)*3);
qd=zeros(1,length(t));
q1(1:length(t1))=trapaccel(2*pi,5,0,0,t1,1.45,3);
q1(length(t1)+1:2*length(t1))=2*pi;
q1((1+2*length(t1)):end)=trapaccel(0,5,2*pi,0,t1,1.45,3);
for i=1:27
 q(length(q1)*(i-1)+1:length(q1)*i)=q1;
end
% q_out=timeseries(qd,t,'name','posicion')
% q_out2=timeseries(q,t,'name','posicion')
% 
% q=trapaccel(2*pi,5,0,0,t,1.7,2.2);
qd=diff(q)/0.0001;

qd_out=timeseries(qd,t(1:end-1),'name','posicion')
plot(t,q,t(1:end-1),qd);
legend('q_{1}','dq_{1}/dt')
xlabel('Tiempo [s]','FontWeight','bold','FontSize',12)
ylabel('rad, rad/s, rad/s^{2}','FontWeight','bold','FontSize',12)
title('')
set(gcf,'color','white','Position',[255 69 708 597])
set(gca,'FontWeight','bold','FontSize',13)

grid on