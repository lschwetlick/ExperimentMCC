%% Cueing experiment
% made by Lisa
clear
sca
%% Parameters
design=setParams();  %<- Diese Funktion wird von jedem verändert, der neue Parameter braucht
design.trialList=trialListGen(design); %<- Diese Funktion muss noch geschrieben werden
%% PTB Setup
PsychDefaultSetup(2);
Screen('Preference', 'SkipSyncTests', 1);
% screens = Screen('Screens')
screenNumber = 0;
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, design.bgCol);
%% Body
instructionText(window,design);  %<- Diese Funktion muss noch geschrieben werden
rtList=[];
for t=1:trials
    
    fixationCross(window, design); %<- Diese Funktion muss noch geschrieben werden
    cuePres(window, design); %<- Diese Funktion muss noch geschrieben werden
    targetPres(window, design); %<- Diese Funktion muss noch geschrieben werden
    rt=getRT(window, design);%<- Diese Funktion muss noch geschrieben werden
    rtList=[rtList, rt]
end
%% Ende
endText(window, design); %<- Diese Funktion muss noch geschrieben werden

sca