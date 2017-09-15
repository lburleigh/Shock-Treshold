

%% Instructions

InstructionBegin.line{1} = sprintf('This task will determine the intensity of the shock');
InstructionBegin.line{2} = sprintf('\n\nYou will receive a MILD SHOCK');
InstructionBegin.line{3} = sprintf('\n\nAfter each MILD SHOCK you will be asked about the shock') ;
InstructionBegin.line{4} = sprintf('\n\nDictate to the researcher how the MILD SHOCK felt');
InstructionBegin.line{5} = sprintf('\n\nHe/She will then adjust the intensity accordingly');
InstructionBegin.line{6} = sprintf('\n\n\n\n\nPress any key to continue');
InstructionBegin = strcat(InstructionBegin.line{1:length(InstructionBegin.line)});

Instruction1.line{1} = sprintf('Prepare to receive');
Instruction1.line{2} = sprintf('\n\na MILD SHOCK');
Instruction1 = strcat(Instruction1.line{1:length(Instruction1.line)});

Instruction2.line{1} = sprintf('Tell the research how the shock felt based on these questions:');
Instruction2.line{2} = sprintf('\n\nWas the shock painful?') ;
Instruction2.line{3} = sprintf('\n\nWas the shock uncomfortable?') ;
% Instruction1.line{4} = sprintf('\n\nWhen the dot is WHITE relax');
% Instruction1.line{5} = sprintf('\n\nKeep your eyes fixated on the dot for the whole task');
% Instruction1.line{6} = sprintf('\n\n\n\n\nPress any keys to continue');
Instruction2 = strcat(Instruction2.line{1:length(Instruction2.line)});
