actions
addScript

	| newScript |
	newScript := self createIdentityScript. 
	
	ViLoggingService trigger: {
		#message -> 'Script added.'.
		#scriptLabel -> (ViLabelService doObject: newScript) asString}.

	self script: newScript.