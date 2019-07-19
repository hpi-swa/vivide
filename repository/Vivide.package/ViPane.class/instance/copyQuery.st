actions
copyQuery

	| newQuery |
	self script ifNil: [self addQuery].
	
	newQuery := self script deepCopy.
	
	self flag: #metaScript.
	self isTopLevel ifFalse: [
		newQuery adoptOrganization: self script organization].
	
	ViLoggingService trigger: {
		#message -> 'Script copied.'.
		#scriptLabel -> (ViLabelService doObject: newQuery) asString}.

	self
		script: newQuery;
		debugQuery: newQuery.