accessing
outputKind: classOrArray

	outputKind == classOrArray ifTrue: [^ self].

	(classOrArray isCollection and: [classOrArray size = 1])
		ifTrue: [^ self outputKind: classOrArray first].

	outputKind := classOrArray.