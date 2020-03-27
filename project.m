close all
clc
clear all

%% Question 1
%Default params
param.Pr = 0.71;     % Prandtl number
param.Ri = 0.;       % Richardson number
param.Ra = 0;      % Rayleigh number

param.Lx = 1;        % width of box
param.Ly = 1;        % height of box
param.ig = 10000;      % number of iterations between output

% Boundary and initial conditions:
param.Utop = 1.; 
param.Ubottom = 0.;
param.Tbottom = 1.; param.Ttop = 0.;
param.namp = 0.1;

load('Case1.mat')
% case A
param.caseName = 'Part1_Case_A';
param.Re = 20;      % Reynolds number
param.dt = 0.001;      % time step
param.Tf = 50;       % final time
param.Nx = 30;      % number of cells in x
param.Ny = 30;      % number of cells in y
[P1_CA.maxU,P1_CA.maxV,P1_CA.tser,P1_CA.Tser,P1_CA.centerU,P1_CA.centerV,P1_CA.centerT] = SG2212_template(param);

% case B
param.caseName = 'Part1_Case_B';
param.Re = 200;      % Reynolds number
param.dt = 0.001;      % time step
param.Tf = 50;       % final time
param.Nx = 50;      % number of cells in x
param.Ny = 50;      % number of cells in y
[P1_CB.maxU,P1_CB.maxV,P1_CB.tser,P1_CB.Tser,P1_CB.centerU,P1_CB.centerV,P1_CB.centerT] = SG2212_template(param);

% case C
param.caseName = 'Part1_Case_C';
param.Re = 4000;      % Reynolds number
param.dt = 0.001;      % time step
param.Tf = 50;       % final time
param.Nx = 100;      % number of cells in x
param.Ny = 100;      % number of cells in y
load('Case1.mat')
[P1_CC.maxU,P1_CC.maxV,P1_CC.tser,P1_CC.Tser,P1_CC.centerU,P1_CC.centerV,P1_CC.centerT] = SG2212_template(param);

save('Case1.mat','P1_CA','P1_CB','P1_CC')

% 
% lid_driven_cavity=1;
% if (lid_driven_cavity==1)
%   % Parameters for test case I: Lid-driven cavity
%   % The Richardson number is zero, i.e. passive scalar.
%   
%   param.Pr = 0.71;     % Prandtl number
%   param.Re = 20;      % Reynolds number
%   param.Ri = 0.;       % Richardson number
%   param.Pe = param.Re*param.Pr; %Peclet number
%   param.Ra = 0;      % Rayleigh number
%   
%   param.dt = 0.001;      % time step
%   param.Tf = 1;       % final time
%   param.Lx = 1;        % width of box
%   param.Ly = 1;        % height of box
%   param.Nx = 30;      % number of cells in x
%   param.Ny = 30;      % number of cells in y
%   param.ig = 10000;      % number of iterations between output
%   
%   % Boundary and initial conditions:
%   param.Utop = 1.; 
%   param.Ubottom = 0.;
%   param.Tbottom = 1.; param.Ttop = 0.;
%   param.namp = 0.;
% else
%   % Parameters for test case II: Rayleigh-B�nard convection
%   % The DNS will be stable for Ra=1705, and unstable for Ra=1715 
%   % (Theoretical limit for pure sinusoidal waves 
%   % with L=2.01h: Ra=1708)
%   % Note the alternative scaling for convection problems.
% %     
%   param.Pr = 0.71;     % Prandtl number
%   param.Ra = 1715;      % Rayleigh number
%   
% 
%   param.Re = 1./Pr;    % Reynolds number
%   param.Ri = param.Ra*param.Pr;    % Richardson number
%   param.Pe = param.Re*param.Pr; %Peclet number
%   
%   param.dt = 0.01;   % time step
%   param.Tf = 1;       % final time
%   param.Lx = 10.;      % width of box
%   param.Ly = 1;        % height of box
%   param.Ny = 10;      % number of cells in y
%   param.Nx = round(param.Lx/param.Ly*param.Ny);      % number of cells in x
%   
%   param.ig = 20;      % number of iterations between output
%   
%   % Boundary and initial conditions:
%   param.Utop = 0.; 
%   param.Ubottom = 0.;
%   param.Tbottom = 1.; param.Ttop = 0.;
%   param.namp = 0.1;
%   
%   [P1_CB.maxU,P1_CB.maxV,P1_CB.tser,P1_CB.Tser,P1_CB.centerU,P1_CB.centerV,P1_CB.centerT] = SG2212_template(param);
% end
% 
% 
% 
