close all
clear all
clc



figure_width = 500;
figure_height = 150;





load('Case1.mat')
probe = figure();
probe.Position(3) = figure_width;
probe.Position(4) = figure_height;
plot(P1_CA.tser,abs(P1_CA.Tser),P1_CB.tser,abs(P1_CB.Tser),P1_CC.tser,abs(P1_CC.Tser))
xlabel('t','interpreter','latex')
ylabel('U probe','interpreter','latex')
set(gca,'TickLabelInterpreter', 'latex')
legend({'Case A','Case B','Case C'},'interpreter','latex')
set(gcf, 'PaperUnits', 'normalized')
set(gcf,'renderer','Painters')
saveas(gcf,'Probe_history.eps','epsc')

load('Case2B.mat')
probe2 = figure();
probe2.Position(3) = figure_width;
probe2.Position(4) = figure_height;
yyaxis left
semilogy(P2_CB1.tser,abs(P2_CB1.Tser))
ylim([3.5e-4,5e-4])
xlabel('t','interpreter','latex')
ylabel('U probe','interpreter','latex')
set(gca,'TickLabelInterpreter', 'latex')


yyaxis right
semilogy(P2_CB2.tser,abs(P2_CB2.Tser))
ylim([2e-3,3e-3])
legend({'Ra 1710','Ra 1711'},'interpreter','latex')

set(gcf, 'PaperUnits', 'normalized')
set(gcf,'renderer','Painters')
saveas(gcf,'Probe_history2.eps','epsc')


load('Case2A.mat')
probe3 = figure();
probe3.Position(3) = figure_width;
probe3.Position(4) = figure_height;
semilogy(P2_CA1.tser,abs(P2_CA1.Tser),P2_CA2.tser,abs(P2_CA2.Tser),P2_CA3.tser,abs(P2_CA3.Tser))
grid on
xlabel('t','interpreter','latex')
ylabel('U probe','interpreter','latex')
set(gca,'TickLabelInterpreter', 'latex')
legend({'Ra 200','Ra 2000','Ra 60000'},'interpreter','latex')
set(gcf, 'PaperUnits', 'normalized')
set(gcf,'renderer','Painters')
saveas(gcf,'Probe_history2A.eps','epsc')

figure_height = 300;

centU = figure();
centU.Position(3) = figure_width/2;
centU.Position(4) = figure_height;
colours = lines;
data = csvread('OPenFOAM.csv',1);

plot(P1_CC.centerU,linspace(0,1,length(P1_CC.centerU)))
hold on
plot(data(:,1),data(:,8))
plot([0,0],[0,1],'-k')
xlabel('U','interpreter','latex')
ylabel('y/L','interpreter','latex')
set(gca,'TickLabelInterpreter', 'latex')
title('Case C: U at t = 50','interpreter','latex')
legend({'Matlab','OpenFOAM'},'interpreter','latex')
set(gcf, 'PaperUnits', 'normalized')
set(gcf,'renderer','Painters')
saveas(gcf,'Ucenter.eps','epsc')

centV = figure();
centV.Position(3) = figure_width/2;
centV.Position(4) = figure_height;
colours = lines;
hold on
plot(P1_CC.centerV,linspace(0,1,length(P1_CC.centerV)),'color',colours(1,:))
plot(data(:,2),data(:,8))
plot([0,0],[0,1],'-k')
xlabel('V','interpreter','latex')
set(gca,'TickLabelInterpreter', 'latex')
legend({'Matlab','OpenFOAM'},'interpreter','latex')
title('Case C: V at t = 50','interpreter','latex')
set(gcf, 'PaperUnits', 'normalized')
set(gcf,'renderer','Painters')
saveas(gcf,'Vcenter.eps','epsc')

centM = figure();
centM.Position(3) = figure_width/2;
centM.Position(4) = figure_height;
colours = lines;
hold on

V = [0,P1_CC.centerV,0];
U = [avg([0,P1_CC.centerU,1],2);
mag = sqrt(V.^2 + U.^2);

plot(sqrt(P1_CC.centerV.^2 + P1_CC.centerU.^2),linspace(0,1,length(P1_CC.centerV)),'color',colours(1,:))
plot(data(:,2),data(:,8))
plot([0,0],[0,1],'-k')
xlabel('V','interpreter','latex')
set(gca,'TickLabelInterpreter', 'latex')
legend({'Matlab','OpenFOAM'},'interpreter','latex')
title('Case C: V at t = 50','interpreter','latex')
set(gcf, 'PaperUnits', 'normalized')
set(gcf,'renderer','Painters')
saveas(gcf,'Mcenter.eps','epsc')



% centT = figure();
% centT.Position(3) = figure_width/2;
% centT.Position(4) = figure_height;
% colours = lines;
% hold on
% plot(P1_CA.centerT,linspace(0,1,length(P1_CA.centerT)),'color',colours(1,:))
% plot(P1_CB.centerT,linspace(0,1,length(P1_CB.centerT)),'color',colours(2,:))
% plot(P1_CC.centerT,linspace(0,1,length(P1_CC.centerT)),'color',colours(3,:))
% plot([0,0],[0,1],'-k')
% xlabel('T','interpreter','latex')
% set(gca,'TickLabelInterpreter', 'latex')
% legend({'Case A','Case B','Case C'},'interpreter','latex')
% title('T at t = 50','interpreter','latex')
% set(gcf, 'PaperUnits', 'normalized')
% set(gcf,'renderer','Painters')
% saveas(gcf,'Tcenter.eps','epsc')
% 
% 
% 
% 
% figure_width = 500*2;
% figure_height = 150*2;
% 
% 
% fig = openfig('Part2_Case_B3_Velocity.fig');
% Zdata = fig.Children(2).Children(2).ZData;
% xs = linspace(0,10,size(Zdata,2));
% Us = Zdata(round(size(Zdata,1)/2),:);
% [pks,xpks] = findpeaks(Us,xs);
% figpks = figure();
% findpeaks(Us,xs);
% lambdas = xpks(2:end) - xpks(1:end-1);
% hold on
% plot(xpks,0.07*ones(size(xpks)),'-*k');
% ylim([0,0.08]);
% for i = 1:length(lambdas)
%     text((xpks(i+1) + xpks(i))/2,0.075,num2str(lambdas(i)),'interpreter','latex')
% end
% xlabel('x','interpreter','latex')
% ylabel('|u|','interpreter','latex')
% figpks.Position(3) = figure_width;
% figpks.Position(4) = figure_height;
% set(gcf, 'PaperUnits', 'normalized')
% set(gcf,'renderer','Painters')
% figpks.PaperPositionMode='auto';
% saveas(figpks,'findpeaks.eps','epsc')

















% 
% case_names = {'A1','A2','A3','B0','B1','B2','B3','B4'};
% %case_names = {'B4'};
% %case_names = {'A','B','C'};
% part = 2;
% for i = 1:length(case_names)
%     
% case_name = case_names{i};
% 
% nameV = ['Part',num2str(part),'_Case_',case_name,'_Velocity'];
% nameT = ['Part',num2str(part),'_Case_',case_name,'_Temp'];
% 
% figV = openfig([nameV,'.fig']);
% figV.Position(3) = figure_width;
% figV.Position(4) = figure_height;
% set(gcf, 'PaperUnits', 'normalized')
% set(gcf,'renderer','Painters')
% figV.PaperPositionMode='auto';
% 
% % make it neater
% % set(figV,'Title.Interpreter','latex')
% % figV.Children(2).Title.Interpreter = 'latex';
% % figV.Children(2).Xlabel.Interpreter = 'latex';
% % figV.Children(2).Ylabel.Interpreter = 'latex';
% % figV.Children(2).TickLabelInterpreter = 'latex';
% 
% saveas(figV,[nameV,'.eps'],'epsc')
% 
% figT = openfig([nameT,'.fig']);
% figT.Position(3) = figure_width;
% figT.Position(4) = figure_height;
% set(gcf, 'PaperUnits', 'normalized')
% set(gcf,'renderer','Painters')
% figT.PaperPositionMode='auto';
% 
% 
% saveas(gcf,[nameT,'.eps'],'epsc')
% end
% 
% close all
