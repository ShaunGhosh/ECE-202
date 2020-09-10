% Sounak Ghosh
% 9/17/19
% ECE 202 - Fall 2019 - MATLAB Exercise M1
% Equation source: http://www.convertalot.com/elastic_collision_calculator.html
% MATLAB script to determine the final velocities of 2 carts after an
% elastic collision.


clear % clears all variables in the workplace; avoids common errors
clc  % clears all previous outputs in the command window

% -------- given information -------- 

m1 = 250;  % mass of the cart#1 in g
m2 = 150;  % mass of the cart#2 in g
v1i = 40;  % initial velocity of cart#1 in cm/s
v2i = -30; % initial velocity of cart#2 in cm/s


% --------- calculations ----------
% (a)
M = m1 + m2;                        % total mass of cart#1 and cart#2 in g

v1f = (m1*v1i - m2*v1i + 2*m2*v2i)/ M  % final velocity of cart#1 in cm/s
                                             % using momentum conservation
                                             % and kinetic energy
                                             % conservation

v2f = (2*m1*v1i - m1*v2i + m2*v2i)/ M  % final velocity of cart#2 in cm/s
                                             % using momentum conservation
                                             % and kinetic energy
                                             % conservation

% ---------- check answers --------
% (b) 
p1i = m1*v1i;  % Initial Momentum Cart#1
p2i = m2*v2i;  % Initial Momentum Cart#2                               
p1f = m1*v1f;  % Final Momentum Cart#1
p2f = m2*v2f;  % Final Momentum Cart#2

checkMomentum = p1f + p2f - (p1i + p2i)          % The change in the total 
                                                 % momentum of the system 
                                                 % before & after the
                                                 % collision should be
                                                 % zero.

e1i = 0.5*m1*v1i^2;   % Initial Energy Cart#1
e2i = 0.5*m2*v2i^2;   % Initial Energy Cart#2
e1f = 0.5*m1*v1f^2;   % Final Energy Car1#1
e2f = 0.5*m2*v2f^2;   % Final Energy Car1#2

checkEnergy = e1f + e2f - (e1i + e2i)                                               
                                                 % The change in the total 
                                                 % energy of the system 
                                                 % before & after the
                                                 % collision should be
                                                 % zero.
                                                    