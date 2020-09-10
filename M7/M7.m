% Sounak (Shaun) Ghosh
% 11/09/19
% ECE 202 - MATLAB Exercise M7
% Current, Voltage & Power over a function of time in an RL circuit

clear % clears all variables in the workplace; avoids common errors
clc

% ----- Constants ---------
L = 50;                        % Inductance in miliHenry  (mH)
R = 2;                         % Resistance in Ohms
V0 = 10;                       % Voltage in Volts, (V)
Tau = L / R;                   % Time constant (ms)
tmin = 0;                      % time in miliseconds (ms)
tmax = 10 * Tau;               % time in miliseconds (ms)
N = 400;
t = linspace(tmin, tmax, N+1);  % needed to plot from 0 to 10*Tau (ms)
dt = (tmax -tmin) / N;          % in miliseconds (ms)


%------ Calculations -------
If = V0/R;                         % Current After a very long time in Amperes, A
I = If *(1 - exp(-t/Tau));         % current as a function of inductor in Amperes, A
v = V0*exp(-t/Tau);                % voltage across the inductor in Volts, V
p = v.*I;                          % power absorbed by the inductor in Watts, W

wf = 0.5 * L * If^(2)                  % final energy stored in inductor in miliJoules, mJ
w_total = sum(p * dt)                    % Total energy after a long time in miliJoules, mJ
w_difference = wf - w_total              % Energy difference between the final and the total, mJ 
Percent_Diff = (w_difference)*100 / wf   % Percent difference 

%-------- Plots ------------
% Subplot 1
subplot(3,1,1)                              
plot(t, I, 'b', 'LineWidth', 2)            
ylabel('Current (A)', 'FontSize', 16)
title({'ECE 202, Exercise M7';'Power Absorbed P(t), Voltage V(t) & Current i(t)'; 'in an RL Circuit Charging an Inductor'}, 'FontSize', 20)
text(150, 3, '$$ i(t) = {5}\cdot{(1-{e^{-t\over25})}} $$', ...
'Interpreter', 'latex', 'FontSize', 24)
grid on;

% Subplot 2
subplot(3,1,2)                              
plot(t, v, 'r', 'LineWidth', 2)             
ylabel('Voltage (V)', 'FontSize', 16)            
text(160, 6, '$$ v(t) = 10\cdot{e^{-t\over25}} $$', ...
'Interpreter', 'latex', 'FontSize', 24)
grid on;

% Subplot 3
subplot(3,1,3)                             
plot(t, p, 'k', 'LineWidth', 2) 
xlabel('time t (ms)', 'FontSize', 18) 
ylabel('Absorbed Power (W) ', 'FontSize', 16)
text(160, 11, '$$ p(t) = v(t)\cdot{i(t)} $$', ...
'Interpreter', 'latex', 'FontSize', 24)
grid on;
