SetKeyDelay, 10, 75
SetMouseDelay, 50
SendMode Input
#NoEnv
#MaxThreadsPerHotkey 2
CoordMode, Mouse, Window
Sens = 60
toggle = 0
ImageClick(Width,Height,image_argument)
{
	ImageSearch, FoundX, FoundY, 0, 0, %Width%, %Height%,%image_argument%
	if ErrorLevel = 2
	{
		MsgBox %image_argument% is missing
		return false
	}
	else if ErrorLevel = 1
	{
		;Image not found
		return false
	}
	else
	{
		
		MouseMove, FoundX, FoundY, 0
		RandSleep(100,300)
		Send, {LButton Down}
		Sleep 100
		Send, {LButton Up}

	}
}
RandSleep(x,y) 
{
	Random, rand, %x%, %y%
	Sleep %rand%
}


F8::
	Global Sens
    Toggle := !Toggle
    While Toggle
	{
		image_argument := *60 complete.png
		if ImageClick(A_ScreenWidth,A_ScreenHeight,"*60 complete.png")
		{
			RandSleep(1000,2000)				
		}
		if ImageClick(A_ScreenWidth,A_ScreenHeight,"*60 confirm.png")
		{
			RandSleep(1000,2000)			
		}
		RandSleep(1000,2000)
    }
return		
