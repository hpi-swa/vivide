actions
addQuery

	| newQuery |
	newQuery := self currentQuery
		ifNil: [ViQueryStep transform: ViQueryMapDefinition defaultSourceCode]
		ifNotNil: [:q | q copyQuery].

	ViLoggingService trigger: {
		#message -> 'Script copied.'.
		#scriptLabel -> (ViLabelService doObject: newQuery) asString}.

	self
		currentQuery: newQuery;
		debugQuery: newQuery.