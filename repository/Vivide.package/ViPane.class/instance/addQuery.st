actions
addQuery

	| newQuery |
	newQuery := self currentQuery
		ifNil: [ [:object | object] asScript ]
		ifNotNil: [:q | q deepCopy].

	ViLoggingService trigger: {
		#message -> 'Script copied.'.
		#scriptLabel -> (ViLabelService doObject: newQuery) asString}.

	self
		currentQuery: newQuery;
		debugQuery: newQuery.