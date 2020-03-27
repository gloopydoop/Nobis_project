close all
clear all
clc

figure_width = 400;
figure_height = 400;

part = 1;
case_name = 'B';

nameV = ['Part',num2str(part),'_Case_',case_name,'_Velocity'];
figV = openfig([nameV,'.fig']);
%set(figV,'Position',[100,100,figure_width,figure_height])
fig.PaperPositionMode='auto';
print([nameV,'.pdf'],'-dpdf','-fillpage')