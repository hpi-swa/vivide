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
			ifTrue: [^ self icons at: assoc value ifAbsentPut: [(self perform: assoc value) clippedTo: 16@16]]].

	(aClassDescription inheritsFrom: TestCase) ifFalse: [^ self blankIcon].
	
	^ (aClassDescription lastRun at: #errors)
		ifNotEmpty: [UiSilkIcons bulletRedIcon]
		ifEmpty: [(aClassDescription lastRun at: #failures)
			ifNotEmpty: [UiSilkIcons bulletYellowIcon]
			ifEmpty: [(aClassDescription lastRun at: #passed)
				ifNotEmpty: [UiSilkIcons bulletGreenIcon]
				ifEmpty: [UiSilkIcons bulletWhiteIcon]]]