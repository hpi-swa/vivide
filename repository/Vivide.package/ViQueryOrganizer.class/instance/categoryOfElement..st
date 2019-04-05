categories
categoryOfElement: queryPart

	| categorizer |
	categorizer := queryPart isScript
		ifTrue: [self stepsCategorizer]
		ifFalse: [self definitionsCategorizer].

	^ categorizer categoryOfElement: queryPart id