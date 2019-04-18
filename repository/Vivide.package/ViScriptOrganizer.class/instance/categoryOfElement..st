categories
categoryOfElement: aStep

	| categorizer |
	categorizer := aStep isScript
		ifTrue: [self stepsCategorizer]
		ifFalse: [self definitionsCategorizer].

	^ categorizer categoryOfElement: aStep id