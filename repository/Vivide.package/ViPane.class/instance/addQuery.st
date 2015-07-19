actions
addQuery

	| newQuery |
	newQuery := self currentQuery
		ifNil: [ [:object | object] asScript ]
		ifNotNil: [:script | script deepCopy
			adoptOrganization: script organization;
			yourself].
	
	ViLoggingService trigger: {
		#message -> 'Script copied.'.
		#scriptLabel -> (ViLabelService doObject: newQuery) asString}.

	self
		currentQuery: newQuery;
		debugQuery: newQuery.