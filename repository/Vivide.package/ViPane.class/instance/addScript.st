actions
addScript

	| newScript |
	newScript := self createIdentityScript. 

	self flag: #metaScript.
	self isTopLevel ifFalse: [
		newScript adoptOrganization: self script organization].
	
	ViLoggingService trigger: {
		#message -> 'Script added.'.
		#scriptLabel -> (ViLabelService doObject: newScript) asString}.

	self script: newScript.