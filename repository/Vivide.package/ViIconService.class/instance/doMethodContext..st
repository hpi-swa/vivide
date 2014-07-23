operations - context
doMethodContext: aMethodContext

	aMethodContext selector == #doesNotUnderstand:
		ifTrue: [^ UiFugueIcons questionSmallWhiteIcon].
		
	aMethodContext selector isDoIt
		ifTrue: [^ UiSilkIcons scriptIcon].
		
	^ self doObject: aMethodContext method "could be nil"