categories
categoryOfElement: queryPart

	| categorizer |
	categorizer := queryPart isQueryStep
		ifTrue: [self stepsCategorizer]
		ifFalse: [self definitionsCategorizer].

	^ categorizer categoryOfElement: queryPart id