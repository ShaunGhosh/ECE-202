% Sounak Ghosh
% 9/17/19
% ECE 202 - Fall 2019 - MATLAB Exercise M2 - Design Problem
% Equation source: http://www.convertalot.com/elastic_collision_calculator.html
% MATLAB script to determine the mass of a cart.


clear % clears all variables in the workplace; avoids common errors
clc % clears all previous outputs in the command window

% -------- given information -------- 

m2 = 150;  % mass of the cart#2 in g
v1i = 30;  % initial velocity of cart#1 in cm/s
v2i = -30; % initial velocity of cart#2 in cm/s
v1f = 0;  % final velocity of cart#1 in cm/s

% --------- calculations ----------
% (c)

m1 = m2*(v1f + v1i - 2*v2i) / (v1i - v1f)     % Mass of cart#1 in g using v1f 
                                             % from M1 that uses
                                             % momentum conservation
                                             % and kinetic energy
                                             % conservation
                                             
M = m1 + m2;                         % total mass of cart#1 and cart#2 in g
                                             
v2f = (m1*(2*v1i - v2i) + m2*v2i)/ M   % final velocity of cart#2 in cm/s
                                             % using momentum conservation
                                             % and kinetic energy
                                             % conservation


% ---------- check answers --------
% (e)                                            
p1i = m1*v1i;  % Initial Momentum Cart#1
p2i = m2*v2i;  % Initial Momentum Cart#2                               
p1f = m1*v1f;  % Final Momentum Cart#1
p2f = m2*v2f;  % Final Momentum Cart#2

check_p = p1f + p2f - (p1i + p2i)                % The change in the total 
                                                 % momentum of the system 
                                                 % before & after the
                                                 % collision should be
                                                 % zero.

e1i = 0.5*m1*v1i^2;   % Initial Energy Cart#1
e2i = 0.5*m2*v2i^2;   % Initial Energy Cart#2
e1f = 0.5*m1*v1f^2;   % Final Energy Car1#1
e2f = 0.5*m2*v2f^2;   % Final Energy Car1#2

check_Energy = e1f + e2f - (e1i + e2i)                                               
                                                 % The change in the total 
                                                 % energy of the system 
                                                 % before & after the
                                                 % collision should be
                                                 % zero.

                                              
% (f)                                                 
v1f = (m1*v1i - m2*(v1i - 2*v2i))/ M        % final velocity of cart#1 in cm/s
                                             % should be zero as the cart#1
                                             % is stopping after collision.
% The design criterion is met as we can see that the velocity of cart#1
% after the collsion is zero. Based on the equation of final velocity of
% cart#1 from M1.




