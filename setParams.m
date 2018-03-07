function [design] = setParams()
    design=struct();
    %% General
    design.vp=input('Versuchsperson Nr: ')
    %% Trials 
    design.nTrials=12;
    design.p_correct = .5 % 50% percent identical cue and target location
    %% Colors
    design.bgCol=[0.9,0.9,0.9]
    design.FCsize=50;
end

