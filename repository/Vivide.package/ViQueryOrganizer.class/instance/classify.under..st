categories
classify: queryPart under: category

	| categorizer |
	categorizer := queryPart isScript
		ifTrue: [self stepsCategorizer]
		ifFalse: [self definitionsCategorizer].
		
	category ifNil: [
		categorizer removeElement: queryPart id.
		^ self].

	categorizer
		classify: queryPart id
		under: category.