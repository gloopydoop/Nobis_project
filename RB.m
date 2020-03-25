close all
clc
clear all

% default params
param.Pr = 0.71;     % Prandtl number


param.dt = 0.01;   % time step
param.Tf = 1;       % final time
param.Lx = 10.;      % width of box
param.Ly = 1;        % height of box
param.Ny = 10;      % number of cells in y
param.Nx = round(param.Lx/param.Ly*param.Ny);      % number of cells in x

param.ig = 9999999;      % number of iterations between output

% Boundary and initial conditions:
param.Utop = 0.; 
param.Ubottom = 0.;
param.namp = 0.1;

% case A
param.Tbottom = 0.; param.Ttop = 1.;
param.Tf = 1;       % final time
% 1)
param.caseName = 'Part2_Case_A1';
param.dt = 0.001;      % time step
param.Ra = 200;      % Rayleigh number     
param.Re = 1./param.Pr;    % Reynolds number
param.Ri = param.Ra*param.Pr;    % Richardson number
param.Pe = param.Re*param.Pr; %Peclet number

[P2_CA1.maxU,P2_CA1.maxV,P2_CA1.tser,P2_CA1.Tser,P2_CA1.centerU,P2_CA1.centerV,P2_CA1.centerT] = SG2212_template(param);
% 2)
param.caseName = 'Part2_Case_A1';
param.dt = 0.001;      % time step
param.Ra = 200;      % Rayleigh number     
param.Re = 1./param.Pr;    % Reynolds number
param.Ri = param.Ra*param.Pr;    % Richardson number
param.Pe = param.Re*param.Pr; %Peclet number

[P2_CA1.maxU,P2_CA1.maxV,P2_CA1.tser,P2_CA1.Tser,P2_CA1.centerU,P2_CA1.centerV,P2_CA1.centerT] = SG2212_template(param);



save('Case1.mat','P2_CA1')




