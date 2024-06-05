*** Program Example 2 with ATs ***

clea
DEFINE MENU mnuBefAft
DEFINE PAD padOne OF mnuBefAft PROMPT '1111' AT 1,5
DEFINE PAD padTwo OF mnuBefAft PROMPT '2222' AT 1,15
DEFINE PAD padThree OF mnuBefAft PROMPT '3333' AT 1,25
DEFINE PAD padFour  OF mnuBefAft PROMPT '4444' BEFORE padTwo 
WAIT WINDOW 'Press ESC to erase menu' NOWAIT
ACTIVATE MENU mnuBefAft