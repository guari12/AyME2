function theta=trapaccel(h,T,theta_0,dtheta_0,t,Vmax,Amax)

h=h-theta_0;
    if h>0
        theta=zeros(1,length(t));
        dtheta=zeros(1,7);
        theta_a=zeros(1,7);
        alfa=1-h/(T*Vmax);
        Beta=1-h/(alfa*(1-alfa)*T^2*Amax);
        Jmax=h/(alfa^2*(1-alfa)*(1-Beta)*T^3*Beta);
        Ta=alfa*T;
        Tj=Beta*Ta;
    else
        theta=zeros(1,length(t));
        dtheta=zeros(1,7);
        theta_a=zeros(1,7);
        alfa=1+h/(T*Vmax);
        Beta=1+h/(alfa*(1-alfa)*T^2*Amax);
        Jmax=h/(alfa^2*(1-alfa)*(1-Beta)*T^3*Beta);
        Ta=alfa*T;
        Tj=Beta*Ta;
        Vmax=-Vmax;
        Amax=-Amax;
    end
    

dtheta(1)=dtheta_0;
dtheta(2)=dtheta(1)+0.5*Jmax*Tj^2;
dtheta(3)=dtheta(2)+Amax*(Ta-2*Tj);
dtheta(4)=dtheta(3)+Amax*(Ta-(Ta-Tj))-0.5*Jmax*(Ta-(Ta-Tj))^2;
dtheta(5)=dtheta(4);
dtheta(6)=dtheta(5)-0.5*Jmax*(((T-Ta)+Tj)-(T-Ta))^2;
dtheta(7)=dtheta(6)-Amax*((T-Tj)-((T-Ta)+Tj));

theta_a(1)=theta_0;
theta_a(2)=theta_a(1)+dtheta(1)*Tj+1/6*Jmax*Tj^3;
theta_a(3)=theta_a(2)+dtheta(2)*(Ta-2*Tj)+0.5*Amax*(Ta-2*Tj)^2;
theta_a(4)=theta_a(3)+dtheta(3)*(Ta-(Ta-Tj))+0.5*Amax*(Ta-(Ta-Tj))^2-1/6*Jmax*(Ta-(Ta-Tj))^3;
theta_a(5)=theta_a(4)+dtheta(4)*((T-Ta)-Ta);
theta_a(6)=theta_a(5)+dtheta(5)*(((T-Ta)+Tj)-(T-Ta))-1/6*Jmax*(((T-Ta)+Tj)-(T-Ta))^3;
theta_a(7)=theta_a(6)+dtheta(6)*((T-Tj)-((T-Ta)+Tj))-0.5*Amax*((T-Tj)-((T-Ta)+Tj))^2;
for i=1:length(t)
    if t(i)<=Tj
        theta(i)=theta_a(1)+dtheta(1)*t(i)+1/6*Jmax*t(i)^3;
    end
    if t(i)>Tj && t(i)<=(Ta-Tj)
        theta(i)=theta_a(2)+dtheta(2)*(t(i)-Tj)+0.5*Amax*(t(i)-Tj)^2;
    end
    if t(i)>(Ta-Tj) && t(i)<=Ta
        theta(i)=theta_a(3)+dtheta(3)*(t(i)-(Ta-Tj))+0.5*Amax*(t(i)-(Ta-Tj))^2-1/6*Jmax*(t(i)-(Ta-Tj))^3;
    end
    if t(i)>Ta && t(i)<=(T-Ta)
        theta(i)=theta_a(4)+dtheta(4)*(t(i)-Ta);
    end
    if t(i)>(T-Ta) && t(i)<=((T-Ta)+Tj)
        theta(i)=theta_a(5)+dtheta(5)*(t(i)-(T-Ta))-1/6*Jmax*(t(i)-(T-Ta))^3;
    end
    if t(i)>((T-Ta)+Tj) && t(i)<=(T-Tj)
        theta(i)=theta_a(6)+dtheta(6)*(t(i)-((T-Ta)+Tj))-0.5*Amax*(t(i)-((T-Ta)+Tj))^2;
    end
    if t(i)>(T-Tj)
        theta(i)=theta_a(7)+dtheta(7)*(t(i)-(T-Tj))-0.5*Amax*(t(i)-(T-Tj))^2+1/6*Jmax*(t(i)-(T-Tj))^3;
    end
end