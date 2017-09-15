daq = DaqDeviceIndex;
DaqDConfigPort(daq,0,0); % Making Port off
Ch.D7= bin2dec('10000000'); 
Ch.D6= bin2dec('01000000');
Ch.D5= bin2dec('00100000');
Ch.D4= bin2dec('00010000');
Ch.D3= bin2dec('00001000');
Ch.D2= bin2dec('00000100');
Ch.D1= bin2dec('00000010');
Ch.D0= bin2dec('00000001');
Ch.OFF = bin2dec('00000000');


%% Create DAQ relevant variables

%Creating EventMarker(EM) type
%EventMarker(EM) Digital Out(DO) Channel
%Get information for USB-1608FS
%Change port value to binary;
... 
 %Acquisition Start (FMRI digital Ch. 1)
     EmTrigg = Ch.D0; %bin2dec('00000001');
% %DOch.2 for CS plus with Shock [puts marker that it is shock trial]
%     EmCSps  = Ch.D1; %bin2dec('00000010');
% %DOch.3 for CS plus without Shock
%     EmCSpn = Ch.D2; %bin2dec('00000100');
% %Digital Output channel 4 is for CS minus
%     EmCSm  = Ch.D3; %bin2dec('00001000');
%TTL pulse for SockGenerating; DO ch8 is for the Shock
    EmShock = Ch.D7; %bin2dec('10000000');...EmShock always should be displayed with 'EmCSps';
%DO off
    EmOFF = Ch.OFF; %bin2dec('00000000');

%Creating EventMarker matrix
    %EM = {EmCSps EmCSpn EmCSm};
    %EM = {EmCSpn EmCSm}; %for experiments WITHOUT shock
    %EM = {EmCSps EmCSpn EmCSpn EmCSm EmCSm};
