%% Screen Parameters
fontName = 'Calibri';
fontSize = 20;

%Which screen to display on
whichScr = max(Screen('screens'));

% Color 
p.white = WhiteIndex(whichScr);
p.black = BlackIndex(whichScr);
gray = round((p.white+p.black)/2);
inc = p.white/2;

% Set Window, w, info and screenrect
% FMRI screen: [0 0 1024 768]

[w, ScreenRect] = Screen('OpenWindow', whichScr, gray); %128 for greyscale
slack = Screen('GetFlipInterval', w)/2; %half of the flip time b/c that corresponds centre fixation
priorityLevel = MaxPriority(w);
