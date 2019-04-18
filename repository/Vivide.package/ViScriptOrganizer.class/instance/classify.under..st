categories
classify: aStep under: aCategory

	| categorizer |
	categorizer := aStep isScript
		ifTrue: [self stepsCategorizer]
		ifFalse: [self definitionsCategorizer].
		
	aCategory ifNil: [
		categorizer removeElement: aStep id.
		^ self].

	categorizer
		classify: aStep id
		under: aCategory.