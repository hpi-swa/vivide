actions
toggleBreakpoint

	self method hasBreakpoint
		ifTrue: [BreakpointManager unInstall: self method]
		ifFalse: [BreakpointManager
			installInClass: self theClass
			selector: self selector].
	
	self updateToolbars.