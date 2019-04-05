searching - specific
searchQueries: token

	| match |
	match := token
		ifEmpty: [[:step | step isReference not and: [step nextLabel notNil]]]
		ifNotEmpty: [:t | [:step | step isReference not and: [(step nextLabel ifNil: ['']) includesSubstring: t caseSensitive: false]]].
	
	self setSortBlock: [:step1 :step2 | step1 nextLabel <= step2 nextLabel].
	
	currentSource := #query.
	
	self
		startSearchIn: ViQueryOrganizer active orderedSteps
		match: match.