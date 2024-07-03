Ts = 0.01;
Fs  = 1/Ts;
n = -5:1:20 ;
nTs = n*Ts;
x  = 5*sin(20*pi.*nTs);

Dt = 0.00005;
t  = -0.005:Dt:0.005;
xa = x*sinc(Fs*(ones(length(n),1)*t - nTs'*ones(1,length(t))));
%xa = sin(20 * pi * t);

subplot(1,1,1);
plot(t*1000,xa)
xlabel('time in (msec)');
ylabel('xa(t)')
plot (n*Ts*1000,x);
grid on
hold off

%Sai so toi da giua tin hieu tuong tu duoc tai tao va tin hieu tuong tu thuc te
error = max(abs(xa - sin(20*pi*t))); 

% Ts = 0.01;
% Fs = 1 / Ts;
% n = -5:1:20;
% nTs = n * Ts;
% x = 5 * sin(20 * pi .* nTs);
% 
% Dt = 0.00001; % Giảm mật độ điểm mẫu
% t = -0.005:Dt:0.005;
% xa = sin(20 * pi * t); % Gán trực tiếp giá trị của xa
% 
% subplot(1, 1, 1);
% plot(t * 1000, xa)
% xlabel('time in (msec)');
% ylabel('xa(t)')
% plot(n * Ts * 1000, x);
% grid on
% hold off
% 
% %Sai số tối đa giữa tín hiệu tái tạo và tín hiệu thực tế
% error = max(abs(xa - sin(20 * pi * t)));