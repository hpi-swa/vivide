squeak - kernel
doContext: aContext

	aContext selector = #doesNotUnderstand:
		ifTrue: [^ UiFugueIcons questionSmallWhiteIcon].
		
	aContext selector isDoIt
		ifTrue: [^ UiSilkIcons scriptIcon].
		
	^ self doObject: aContext  "result can be nil"