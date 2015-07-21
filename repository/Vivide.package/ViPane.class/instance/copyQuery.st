actions
copyQuery

	| newQuery |
	self currentQuery ifNil: [self addQuery].
	
	newQuery := self currentQuery deepCopy.
	
	self isTopLevel ifFalse: [
		newQuery adoptOrganization: self currentQuery organization].
	
	ViLoggingService trigger: {
		#message -> 'Script copied.'.
		#scriptLabel -> (ViLabelService doObject: newQuery) asString}.

	self
		currentQuery: newQuery;
		debugQuery: newQuery.