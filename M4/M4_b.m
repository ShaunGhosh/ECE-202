% Sounak Ghosh
% 9/28/19
% ECE 202 - Fall 2019 - MATLAB Exercise M4
% (b) Shifted sinusoid

clear % clears all variables in the workplace; avoids common errors
clc % clears all previous outputs in the command window(s)


t = linspace(-5,5,401);    % -5 to 5s, needed for plot
v = 4*cos(3*(t - 2));      % function for Shifted sinusoid
plot(t,v,'r');               % plot of time vs. g(t), with a red line
axis([-inf inf -6 6]);       % shifts the vertical axis to be -6 to 6.
title('ECE 202, Exercise M4, part (b): Shifted Sinusoid'); % Plot title
xlabel('Time (t) in sec');      % x axis label
ylabel('g(t)')                  % y axis label
