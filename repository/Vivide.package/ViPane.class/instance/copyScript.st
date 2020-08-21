actions
copyScript

	| copy |
	copy := self script deepCopy.
		
	ViLoggingService trigger: {
		#message -> 'Script copied.'.
		#scriptLabel -> (ViLabelService doObject: copy) asString}.

	self
		script: copy;
		editScript: copy.