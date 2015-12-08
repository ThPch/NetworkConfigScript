set rep_courant=%~dp0
ver | find /i "xp" > nul
	If %errorlevel%==0 start mshta "%rep_courant%\interface.hta"
ver | find /i "6.1" > nul
If %errorlevel%==0 "%rep_courant%WDC\elevate.cmd" mshta "%rep_courant%\interface.hta"		
	If %errorlevel%==0 "%rep_courant%WDC\elevate.cmd" mshta "%rep_courant%\WDC\interface.hta"