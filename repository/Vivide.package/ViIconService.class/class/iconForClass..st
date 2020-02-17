class icons
iconForClass: aClassDescription

	(aClassDescription inheritsFrom: Morph)
		ifTrue: [aClassDescription widgetClassIcon ifNotNil: [:form |  ^ form]].

	(aClassDescription class selectors
		detect: [:symbol | symbol endsWith: #Icon]
		ifNone: []) ifNotNil: [:selector |
			(aClassDescription perform: selector) in: [:icon |
				icon isForm ifTrue: [^ icon] ifFalse: []]].

	self classIcons do: [:assoc |
		(aClassDescription includesBehavior: assoc key)
			ifTrue: [^ self icons at: assoc value ifAbsentPut: [(self perform: assoc value) clippedToSize: 16@16]]].

	(aClassDescription inheritsFrom: TestCase) ifFalse: [^ self blankIcon].
	aClassDescription isAbstract ifTrue: [^ self blankIcon].
	
	^ (aClassDescription lastRun at: #errors)
		ifNotEmpty: [ViIcons icons8CancelBlack64pxIcon ]
		ifEmpty: [(aClassDescription lastRun at: #failures)
			ifNotEmpty: [ViIcons icons8Cancel64px1Icon ]
			ifEmpty: [(aClassDescription lastRun at: #passed)
				ifNotEmpty: [ViIcons icons8Checkmark64pxIcon]
				ifEmpty: [ViIcons icons8QuestionMark64pxIcon ]]]