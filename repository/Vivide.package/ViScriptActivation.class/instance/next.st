interpreting
next

	^ self nextSteps next ifNotNil: [:stepOrId | 
		stepOrId isScript ifTrue: [stepOrId] ifFalse: [
			ViScriptTemplate lookupSymbol: stepOrId startingAt: self thisStep organization]]