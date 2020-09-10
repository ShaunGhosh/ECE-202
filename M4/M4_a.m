% Sounak Ghosh
% 9/28/19
% ECE 202 - Fall 2019 - MATLAB Exercise M4
% (a) MATLAB script of a Truncuated Power Series (t)=1+t/2?t^2/3


clear % clears all variables in the workplace; avoids common errors
clc % clears all previous outputs in the command window


t = linspace(0,6,401);         % 0 to 2s, needed for plot
f = 1 + t/2 - t.^2/3;    % function for trunctuated power series
plot(t, f,'LineWidth', 3)     % plot of time vs. f(t), with 3 thickness
title('ECE 202, Exercise M4, part (a): Truncated Power Series')  %plot title
xlabel('Time (t) in sec')                    % X axis  label
ylabel('f(t)','Fontsize',15)                 % Y axis label



