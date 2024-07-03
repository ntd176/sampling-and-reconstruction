fs = input('Hay nhap fs : '); 
 
 tmin = 0;
 tmax = 1;
 t = tmin: 0.001: tmax;
 xa = 5*sin(20*pi*t);
 Ts1 = 1/fs;                                       
 n1 = tmin/Ts1:tmax/Ts1;
 x1 = 5*sin(20*pi*n1*Ts1);
                                      
 figure(5)
 subplot(2,1,1)
 plot(t,xa)
 title('Analog and Discrete Time Signals')
 xlabel('time(sec)')
 ylabel('Analog Signalx(t)')
 subplot(2,1,2)
 stem(n1,x1)
 xlabel('n1')
 ylabel('Discrete timesignal x1(n)')