accessing
inputKind: classOrArray

	inputKind == classOrArray ifTrue: [^ self].
	
	(classOrArray isCollection and: [classOrArray size = 1])
		ifTrue: [^ self inputKind: classOrArray first].
	
	inputKind := classOrArray.