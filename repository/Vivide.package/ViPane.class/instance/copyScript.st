actions
copyScript

	| copy |
	copy := self script deepCopy.
	
	self flag: #metaScript.
	self isTopLevel ifFalse: [
		copy adoptOrganization: self script organization].
	
	ViLoggingService trigger: {
		#message -> 'Script copied.'.
		#scriptLabel -> (ViLabelService doObject: copy) asString}.

	self
		script: copy;
		editScript: copy.