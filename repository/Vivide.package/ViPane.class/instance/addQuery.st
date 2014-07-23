actions
addQuery

	| newQuery |
	newQuery := self currentQuery
		ifNil: [ViQueryStep transform: ViQueryMapDefinition defaultSourceCode]
		ifNotNil: [:q | q copyQuery].

	self
		currentQuery: newQuery;
		debugQuery: newQuery.