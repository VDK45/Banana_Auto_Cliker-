;Press and hold LMB auto click
LButton::
    while GetKeyState("LButton","P")
    {
        Send {LButton}
		sleep 10
    }
Return

;Press F1 auto click
;Press F2 Stop
F2::
	breaker	:= true
return
F1::
	breaker := false
	Loop
	{
		Send {LButton}
		sleep 10
		if (breaker = true){
			break
		}
		
	}
return


; F12 Пауза
*~F12:: Suspend 
SoundBeep
return



; F11 END SCRIPT
~F11:: 
SoundBeep
Exitapp
return
