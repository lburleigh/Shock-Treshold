%% Shock Threshold task
% threshold
%
% by L Burleigh (lburleigh92@gmail.com)
% Edited by Xinrui Jiang (xj1992ch@gmail.com)


addpath(genpath('Scripts'));

%% Call Scripts
PrepScreen;
PrepRect;
PrepKeys;
Daq;

%Prepare Screen
Screen('Preference', 'SkipSyncTests',1);

%% Get Ready
DrawFormattedText(w, sprintf('You will receive a series of MILD SHOCKs\n\nThis will determine the intensity during the task\n\nYou will communicate how each pulse feels to the researcher\n\nThe MILD SHOCK should be uncomfortable but not painful\n\n\n\nPress any button to continue'), 'center', 'center', 0);
Screen('Flip', w);
WaitSecs(0.2);
KbWait(-1);
%clear Instructions;
FlushEvents;


%% Event of Interest

go=true;
n = 0;
while go;
    DrawFormattedText(w, sprintf('Prepare for a MILD SHOCK'), 'center','center', 0);
    Flip1 = Screen('Flip', w);
    Screen('Flip',w, Flip1 + 3.995 - slack);
    DaqDOut(daq,0,EmShock);
    Screen('Flip',w, Flip1 + 4 - slack) ;
    DaqDOut(daq,0,EmOFF);
    DrawFormattedText(w, sprintf('Was the shock...\n\n1. Too low/not uncomfortable\n\n2. Too high/painful\n\n3. Uncomfortable but not painful'), 'center','center', 0);
    Screen('Flip',w);
    KbWait
    [keyIsDown, endSecs, keyCode] = KbCheck(-1);
    if any(keyCode(KB.Resp1))
        DrawFormattedText(w, sprintf('Shock was too low'), 'center','center', 0);
        Screen('Flip', w);
        WaitSecs(2)
        DrawFormattedText(w, sprintf('Waiting for Experimenter'), 'center','center', 0);
        Screen('Flip', w);
        KbWait
    elseif any(keyCode(KB.Resp2))
        DrawFormattedText(w, sprintf('Shock was too high'), 'center','center', 0);
        Screen('Flip', w);
        WaitSecs(2)
        DrawFormattedText(w, sprintf('Waiting for Experimenter'), 'center','center', 0);
        Screen('Flip', w);
        KbWait
    elseif any(keyCode(KB.Resp3))
        n = n+1;
        if n == 2;
            DrawFormattedText(w, sprintf('Shock was uncomfortable but not painful'), 'center','center', 0);
            Screen('Flip', w);
            WaitSecs(2);
            DrawFormattedText(w, sprintf('Proper shock intensity achieved'), 'center','center', 0);
            Screen('Flip', w);
            WaitSecs(2);
            go = false;
        elseif n == 1;
            DrawFormattedText(w, sprintf('Shock was uncomfortable but not painful'), 'center','center', 0);
            Screen('Flip', w);
            WaitSecs(2);
            DrawFormattedText(w, sprintf('Prepare for one more shock at a higher intensity'), 'center','center', 0);
            Screen('Flip', w);
            WaitSecs(2)
            DrawFormattedText(w, sprintf('Waiting for Experimenter'), 'center','center', 0);
            Screen('Flip', w);
            KbWait
        end
    end
end    
    
    
    Screen('CloseAll');
    
    
