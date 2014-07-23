actions
ensureProtocol

	self checkProtocol ifFalse: [^ false].
	protocol ifNotNil: [^ true].
	
	"Create and add a new protocol to the class."
	protocol := ViProtocol
		named: self ui nameEdit theText asString
		inClass: self theClass.
		
	self updateToolbars.
	
	^ true