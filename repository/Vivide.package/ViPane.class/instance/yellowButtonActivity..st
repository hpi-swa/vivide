activation and focus
yellowButtonActivity: shiftState
	"Ignore requests for yellow-button menu. Those can bubble up here via Morph >> #mouseDown:."
	
	self flag: #todo. "mt: Maybe use this hook to provide view-agnostic pop-up menu invocation? Would rely on TViObjectView to have communicated selectedObjects back."