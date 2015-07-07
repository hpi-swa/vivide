updating
updateUi

	self object ifNil: [^ self].

	self object isPropertyExtraction
		ifTrue: [self color: (Color gray: 0.97). edit color: (Color gray: 0.97)]
		ifFalse: [self color: Color white. edit color: Color white].