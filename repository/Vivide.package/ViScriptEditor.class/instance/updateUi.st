updating
updateUi

	self object ifNil: [^ self].

	self isScriptInaccessible
		ifTrue: [self color: (Color fromString: '#FFCFCF'). edit color: (Color fromString: '#FFCFCF')]
		ifFalse: [self color: Color white. edit color: Color white].