function [trialList] = trialListGen(design)
% Generate Design Matrix
% Die Matrix braucht
% Trialnummer
    TrialNr = 1:design.nTrials
    
% Kondition 1: Zeit zwischen cue und target= 0.2,0.5,1s
    ct_interval = repelem([0.2,0.5,1], design.nTrials/3)
    ct_interval = ct_interval(randperm(length(ct_interval)))
    
% Kondition 2: Seite auf der der cue auftaucht: links = 0, rechts = 1
    c_location = repelem([0,1], design.nTrials/2)
    c_location = c_location(randperm(length(c_location)))

% Kondition 3: Seite auf der der target auftaucht (soll 50% richtig sein)
    location_change = randperm(length(c_location), design.nTrials*design.p_correct)
    t_location = c_location
    t_location(location_change) = ~c_location(location_change)

    trialList = horzcat(TrialNr', ct_interval', c_location', t_location')
end

