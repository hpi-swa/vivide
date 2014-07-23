accessing
outputKind: classOrArray

	outputKind == classOrArray ifTrue: [^ self].

	(classOrArray isCollection and: [classOrArray size = 1])
		ifTrue: [^ self outputKind: classOrArray first].

	outputKind in: [:oldOutputKind |
		outputKind := classOrArray.
		
		self notifier
			outputKindChanged: self
			from: oldOutputKind to: outputKind].