close all
clc
clear all

% default params
param.Pr = 0.71;     % Prandtl number


param.dt = 0.01;   % time step
param.Tf = 1;       % final time
param.Lx = 10.;      % width of box
param.Ly = 1;        % height of box
param.Ny = 20;      % number of cells in y
param.Nx = round(param.Lx/param.Ly*param.Ny);      % number of cells in x

param.ig = 9999999;      % number of iterations between output



%% case A
% Boundary and initial conditions:
param.Utop = 0.; 
param.Ubottom = 0.;
param.namp = 0.1;
param.Tbottom = 0.; 
param.Ttop = 1.;
param.Tf = 10;       % final time
% 1)
param.caseName = 'Part2_Case_A1';
param.dt = 0.0005;      % time step
param.Ra = 200;      % Rayleigh number     
param.Re = 1./param.Pr;    % Reynolds number
param.Ri = param.Ra*param.Pr;    % Richardson number
param.Pe = param.Re*param.Pr; %Peclet number

[P2_CA1.maxU,P2_CA1.maxV,P2_CA1.tser,P2_CA1.Tser,P2_CA1.centerU,P2_CA1.centerV,P2_CA1.centerT] = SG2212_template(param);
% 2)
param.caseName = 'Part2_Case_A2';
param.Ra = 2000;      % Rayleigh number     
param.Re = 1./param.Pr;    % Reynolds number
param.Ri = param.Ra*param.Pr;    % Richardson number
param.Pe = param.Re*param.Pr; %Peclet number

[P2_CA2.maxU,P2_CA2.maxV,P2_CA2.tser,P2_CA2.Tser,P2_CA2.centerU,P2_CA2.centerV,P2_CA2.centerT] = SG2212_template(param);
% 3)
param.caseName = 'Part2_Case_A3';
param.Ra = 60000;      % Rayleigh number  
param.Re = 1./param.Pr;    % Reynolds number
param.Ri = param.Ra*param.Pr;    % Richardson number
param.Pe = param.Re*param.Pr; %Peclet number

[P2_CA3.maxU,P2_CA3.maxV,P2_CA3.tser,P2_CA3.Tser,P2_CA3.centerU,P2_CA3.centerV,P2_CA3.centerT] = SG2212_template(param);


save('Case2A.mat','P2_CA1','P2_CA2','P2_CA3')

%% case B
% Boundary and initial conditions:
param.Tbottom = 1.; 
param.Ttop = 0.;
param.Tf = 20;       % final time
param.dt = 0.0005;      % time step
% 
% 1)
% param.caseName = 'Part2_Case_B0';
% 
% param.Ra = 1709;      % Rayleigh number     
% param.Re = 1./param.Pr;    % Reynolds number
% param.Ri = param.Ra*param.Pr;    % Richardson number
% param.Pe = param.Re*param.Pr; %Peclet number
% [P2_CB0.maxU,P2_CB0.maxV,P2_CB0.tser,P2_CB0.Tser,P2_CB0.centerU,P2_CB0.centerV,P2_CB0.centerT] = SG2212_template(param);
% % 1)
% param.caseName = 'Part2_Case_B1';
% 
% param.Ra = 1710;      % Rayleigh number     
% param.Re = 1./param.Pr;    % Reynolds number
% param.Ri = param.Ra*param.Pr;    % Richardson number
% param.Pe = param.Re*param.Pr; %Peclet number
% 
% [P2_CB1.maxU,P2_CB1.maxV,P2_CB1.tser,P2_CB1.Tser,P2_CB1.centerU,P2_CB1.centerV,P2_CB1.centerT] = SG2212_template(param);
% % 2)
% param.caseName = 'Part2_Case_B2';
% param.Ra = 1711;      % Rayleigh number     
% param.Re = 1./param.Pr;    % Reynolds number
% param.Ri = param.Ra*param.Pr;    % Richardson number
% param.Pe = param.Re*param.Pr; %Peclet number
% 
% [P2_CB2.maxU,P2_CB2.maxV,P2_CB2.tser,P2_CB2.Tser,P2_CB2.centerU,P2_CB2.centerV,P2_CB2.centerT] = SG2212_template(param);
% % 3)
% param.caseName = 'Part2_Case_B3';
% param.Ra = 1715;      % Rayleigh number     
% param.Re = 1./param.Pr;    % Reynolds number
% param.Ri = param.Ra*param.Pr;    % Richardson number
% param.Pe = param.Re*param.Pr; %Peclet number
% 
% [P2_CB3.maxU,P2_CB3.maxV,P2_CB3.tser,P2_CB3.Tser,P2_CB3.centerU,P2_CB3.centerV,P2_CB3.centerT] = SG2212_template(param);

% % 4)
% param.caseName = 'Part2_Case_B4';
% param.Ra = 5000;      % Rayleigh number     
% param.Re = 1./param.Pr;    % Reynolds number
% param.Ri = param.Ra*param.Pr;    % Richardson number
% param.Pe = param.Re*param.Pr; %Peclet number
% 
% [P2_CB4.maxU,P2_CB4.maxV,P2_CB4.tser,P2_CB4.Tser,P2_CB4.centerU,P2_CB4.centerV,P2_CB4.centerT] = SG2212_template(param);

% 4)
% param.caseName = 'Part2_Case_B4';
% param.Ra = 1708;      % Rayleigh number     
% param.Re = 1./param.Pr;    % Reynolds number
% param.Ri = param.Ra*param.Pr;    % Richardson number
% param.Pe = param.Re*param.Pr; %Peclet number
% 
% [P2_CB5.maxU,P2_CB5.maxV,P2_CB5.tser,P2_CB5.Tser,P2_CB5.centerU,P2_CB5.centerV,P2_CB5.centerT] = SG2212_template(param);

%     1)
%     param.caseName = 'Part2_Case_B5';
%     param.Ra = 1708;      % Rayleigh number     
%     param.Re = 1./param.Pr;    % Reynolds number
%     param.Ri = param.Ra*param.Pr;    % Richardson number
%     param.Pe = param.Re*param.Pr; %Peclet number
%     
%     [P2_CA1.maxU,P2_CA1.maxV,P2_CA1.tser,P2_CA1.Tser,P2_CA1.centerU,P2_CA1.centerV,P2_CA1.centerT] = SG2212_template(param);
% 
%     
%         % 1)
%     param.caseName = 'Part2_Case_B6';
%     param.Ra = 1705;      % Rayleigh number     
%     param.Re = 1./param.Pr;    % Reynolds number
%     param.Ri = param.Ra*param.Pr;    % Richardson number
%     param.Pe = param.Re*param.Pr; %Peclet number
%     
%     [P2_CA1.maxU,P2_CA1.maxV,P2_CA1.tser,P2_CA1.Tser,P2_CA1.centerU,P2_CA1.centerV,P2_CA1.centerT] = SG2212_template(param);

    %save('Case2B.mat','P2_CB1','P2_CB2','P2_CB3')

