accessing
inputKind: classOrArray

	inputKind == classOrArray ifTrue: [^ self].
	
	(classOrArray isCollection and: [classOrArray size = 1])
		ifTrue: [^ self inputKind: classOrArray first].
	
	inputKind in: [:oldInputKind |
		inputKind := classOrArray.
		
		self notifier
			inputKindChanged: self
			from: oldInputKind to: inputKind].