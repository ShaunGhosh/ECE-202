% Sounak Ghosh
% 9/28/19
% ECE 202 - Fall 2019 - MATLAB Exercise M4
% (d) Three dampings for parallel RLC 

clear % clears all variables in the workplace; avoids common errors
clc % clears all previous outputs in the command window(s)


tms = linspace(0,40,401);                   % 0 to 40 ms, needed for plot
t = tms * 10^(-3);                          
v1 = 16*exp(-800*t) - 4*exp(-200*t);          % Function for v2
v2 = exp(-500*t).*(12 - 6000*t);              % Function for v2
v3 = exp(-120*t).*(12*cos(450*t) - 5*sin(450*t)); % Function for v3
plot(tms,v1,'r',tms,v2,'g',tms,v3,'b');           % plot for v1(t), v2(t) and v3(t)
ax = gca;
ax.FontSize = 18;
xlabel('time t (ms)');                        % X axis Label
ylabel('voltage v(t)');                       % Y axis Label
title('ECE 202, Exercise M4, part (d): Three dampings for parallel RLC') % Plot title
legend('Overdamped','Critically-damped','Underdamped')
grid on;