% Sounak Ghosh
% 9/28/19
% ECE 202 - Fall 2019 - MATLAB Exercise M4
% 

clear % clears all variables in the workplace; avoids common errors
clc % clears all previous outputs in the command window(s

%(a) Truncuated Power Series

t = linspace(0,6,401);
v = 1 + (t/2) - (t.^(2)/3);
plot(t, v, 'LineWidth', 3)
title('ECE 202, Exercise M4, part (a): Truncuated Power Series')
xlabel('time t (s)')

%(b) Shifted sinusoid

t = linspace(-5,5,401);
v = 4*cos(3*(t - 2));
plot(t,v,'r');
axis([-inf inf -6 6]); 
title('ECE 202, Exercise M4, part (b): Shifted Sinusoid');
xlabel('time t (s)');


%(c) Normalized Gaussian

x = linspace(0,10,500);
v = 1/(2*pi^(1/2)) * exp(-(x-5).^2/4);
plot(x,v);
title('ECE 202, Exercise M4, part (c): Normalized Gaussian', 'Fontsize', 24)
xlabel('distance x (m)', 'Fontsize', 18)

%(d) Three dampings for parallel RLC

t = linspace(0,.04,401);
v1 = 16*exp(-800*t) - 4*exp(-200*t);
v2 = 12*exp(-500*t) - 6000*t.*exp(-500*t);
v3 = 12*exp(-120*t).*cos(450*t) - 5*exp(-120*t).*sin(450*t);
plot(t,v1,'r',t,v2,'g',t,v3,'b');
xlabel('time t (s)');
title('ECE 202, Exercise M4, part (d): Three dampings for parallel RLC')


