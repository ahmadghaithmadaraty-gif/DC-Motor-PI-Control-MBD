% DC Motor Parameters (Standard 240V Motor)
V_nom = 240;    % Nominal Voltage (V)

% Electrical Parameters
R = 2.5;        % Armature Resistance (Ohms)
L = 0.02;       % Armature Inductance (Henries)

% Mechanical Parameters
J = 0.05;       % Rotor Inertia (kg.m^2)
B = 0.002;      % Viscous Friction Coefficient (N.m.s)

% Electromechanical Constants
% (In SI units, Kt and Ke are numerically equal)
Kt = 1.5;       % Motor Torque Constant (N.m/A)
Ke = 1.5;       % Back-EMF Constant (V/(rad/s))

disp('Motor Parameters Loaded Successfully!');