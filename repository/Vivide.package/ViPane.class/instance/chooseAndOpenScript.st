script selection
chooseAndOpenScript

	| pane scripts doOpen |
	doOpen := Sensor shiftPressed not.
	
	scripts := self appropriateQueries.
	
	doOpen ifTrue: [
		LastHelperPane := ViPane new.
		"For better performance not use #objects: to avoid model updates."
		LastHelperPane model inputForChildren: self objects].	
	
	ViPane new
		script: #formattedScripts asScript;
		objects: scripts;

		chooseObjectAt: ActiveHand cursorPoint - (5@5)
		thenNotify: (doOpen ifTrue: [LastHelperPane] ifFalse: [self])
		with: (doOpen ifTrue: [#openScript:] ifFalse: [#script:]).

	ViLoggingService trigger: {#message -> 'Script list opened.'}.