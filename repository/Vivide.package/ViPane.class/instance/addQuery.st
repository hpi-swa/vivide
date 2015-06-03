actions
addQuery

	| newQuery |
	newQuery := self currentQuery
		ifNil: [ [:object | object] asScript ]
		ifNotNil: [:q | q deepCopy].
	
	"Keep current organization if it is not the default one."
	self currentQuery ifNotNil: [:script |
		script isDefault ifFalse: [
			newQuery adoptOrganization: script organization]].

	ViLoggingService trigger: {
		#message -> 'Script copied.'.
		#scriptLabel -> (ViLabelService doObject: newQuery) asString}.

	self
		currentQuery: newQuery;
		debugQuery: newQuery.