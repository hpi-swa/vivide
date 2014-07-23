accessing - convenience
currentTypeFromStep

	self typeMappings
		select: [:spec | spec notNil and: [spec key = self step class]]
		thenDo: [:spec | 
			(self step isTransformStep not or: [spec value first = self step definition mapType])
					ifTrue: [^ spec]].
				
	^ nil