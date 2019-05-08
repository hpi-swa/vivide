actions
addQuery

	| newQuery |
	newQuery := self createIdentityScript. 

	self flag: #metaScript.
	self isTopLevel ifFalse: [
		newQuery adoptOrganization: self currentQuery organization].
	
	ViLoggingService trigger: {
		#message -> 'Script added.'.
		#scriptLabel -> (ViLabelService doObject: newQuery) asString}.

	self
		currentQuery: newQuery;
		debugQuery: newQuery.