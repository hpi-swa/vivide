actions
addQuery

	| newQuery |
	newQuery := [:object | object] asScript.
	newQuery setProperty: #isNew toValue: true. 

	self flag: #metaScript.
	self isTopLevel ifFalse: [
		newQuery adoptOrganization: self currentQuery organization].
	
	ViLoggingService trigger: {
		#message -> 'Script added.'.
		#scriptLabel -> (ViLabelService doObject: newQuery) asString}.

	self
		currentQuery: newQuery;
		debugQuery: newQuery.