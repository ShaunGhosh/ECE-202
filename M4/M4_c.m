% Sounak Ghosh
% 9/28/19
% ECE 202 - Fall 2019 - MATLAB Exercise M4
% (c) Normalized Gaussian

clear % clears all variables in the workplace; avoids common errors
clc % clears all previous outputs in the command window(s)


x = linspace(0,10,500);                                % -5 to 5s, needed for plot
P = 1/(2*pi^(1/2)) * exp(-(x-5).^2/4);                 % function for Normalized Gaussian
plot(x, P,'--');                                            % plot of time vs. P(t), with a red line
title('ECE 202, Exercise M4, part (c): Normalized Gaussian', 'Fontsize', 24) % Plot title with 24 font
xlabel('distance x (m)', 'Fontsize', 18);              % x axis label
ylabel('P(x)','Fontsize', 18);                         % y axis label