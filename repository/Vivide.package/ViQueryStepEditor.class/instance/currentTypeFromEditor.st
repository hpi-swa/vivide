accessing - convenience
currentTypeFromEditor

	self typeMappings
		select: [:spec | spec notNil and: [spec key == self currentClass]]
		thenDo: [:spec | spec value first = self currentDefinition mapType
			ifTrue: [^ spec]].
				
	Error signal: 'Type not found!'.