% Sounak Ghosh
% 9/28/19
% ECE 202 - Fall 2019 - MATLAB Exercise M5
% equation source: https://www.math.utah.edu/~gupta/MATH1060Fall2012/FormulaSheet.pdf

clear % clears all variables in the workplace; avoids common errors
clc % clears all previous outputs in the command window

% f(t) = 12*cos(60t + 1.8)*cos(100t + 1.2)
% cos A cos B = 1/2 (cos(A + B) + cos(A ? B))

tms = linspace(0,200,400);        % 0 to 200ms, needed for plot
t = tms * 10^(-3);                % Converting time to milisecond
x = 60*t - 1.8;                   % first sinusoid expression in cos
y = 100*t + 1.2;                  % second sinusoid expression in cos
a = 12;                           % a is the constant
f1 = a*cos(x).*cos(y);            % the original sinusoid fnction
f2 = (a/2)*cos(x - y);            % function of the first sinusoid
f3 = (a/2)*cos(x + y);            % function of the second sinusoid

%---- checks ------------------

check1 = f2 + f3 - f1;                      % Check function for the array with zeroes
plot(tms,f1,tms,f2,tms,f3,tms,check1,'--')    % plot f1, f2, f3 and check 1
ax = gca;
ax.FontSize = 18.5;
% legend showing the magnitude of each function
legend('f1 - 12*cos(x)*cos(y)', 'f2 - 6*cos(x-y)', 'f3 - 6*cos(x-y)','check1:f2 + f3 - f1')     
xlabel('time t (ms)')                         % x axis label
ylabel('f(t)')                                % y axis label
title('ECE 202, Exercise M5 - Plotting a Product of 2 Sinusoids as a Sum of 2 Sinusoids')
check2 = sum(abs(check1))

% The ABS(absolute function) is used to prevent the postive part cancel the
% the negative part. By using the ABS(absolute function) everything is
% becomes the same sign and reduces error points in the the plots. Instead
% of just adding the positive and the negative numbers which will anyway
% give zero, we add the positive points to just check the actual magnitude of
% the data. Hence, making our check more precise and solid.
