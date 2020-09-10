% Sounak Ghosh
% 11/28/19
% ECE 202 - Fall 2019 - MATLAB Exercise M8
% Solving a system of linear equations using the Inverse Method to convert
% to partial fraction expansion.

clear % clears all variables in the workpace; avoids common errors

xmin = -4;                          % min value of x
xmax = 4;                           % max value of x
n = input("Number of Terms = ");    % number of points to have in the array
x = linspace(xmin, xmax, n);        % making an array of n points from xmin to xmax 

% ------ Given ---------
c = 6;                  % value of c in the eqn. ax^2+bx+c
b = 5;                  % value of b in the eqn, ax^2+bx+c
bx = b*x;               % bx in ax^2+bx+c
a = 4;                  % value of a in the eqn, ax^2+bx+c
ax2 = a * x.^2;         % ax^2 in ax^2+bx+c

% ------ Fraction Expansion ---------
N = ax2 + bx + c;       % Numerator i.e. 4x^2+5x+6
D1 = x - 1;            % Denominator for the first term
D2 = x - 2;            % Denominator for the second term
D3 = x - 3;            % Denominator of termthe third 
D = D1 .* D2 .* D3;    % Common denominator

% ------ Matrix calculation ---------
A = [1 1 1; -5 -4 -3; 6 3 2];  % Coefficient matrix A of Ax=b
b = [4 ; 5; 6];        % b matrix of Ax=b 
C = inv(A)* b          % find the solution of a system of linear eqn. through the inverse method

R_Lhs = N./D;           % left hand side eqn. R(x) = N(x)/D(x) 
R1 = C(1)./D1;          % first RHS term
R2 = C(2)./D2;          % second RHS term
R3 = C(3)./D3;          % third RHS term
R_Rhs = R1 + R2 + R3;     % RHS total

% ------- Checks ---------------------
check = sum(abs(R_Lhs - R_Rhs))  % check using the absolute value function 

% For some values of n like 5, 9 etc. it results in a zero in x array which
% is used to calculate the denominator of the array causing matlab to show 
% Not A Number (NaN) as it can't divide by zero. The number of input terms
% i.e. the intervals in the linspace command can cause to have zero as one
% of the values in the array and we use the x array values to calculate the
% denominator, which with a zero will result in a NaN (not a number) as
% no number can be divided by zero.
