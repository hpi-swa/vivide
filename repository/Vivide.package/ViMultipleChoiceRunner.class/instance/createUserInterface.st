as yet unclassified
createUserInterface

	| isSingleChoice box buttonClass |
	isSingleChoice := (ViQueryInterpreter isCollection: self task template first) and: [(self task template count: [:choice | choice second]) = 1].
	
	box := UiButtonGroup new
		color: Color transparent;
		changeTableLayout;
		layoutInset: 15.
		
	buttonClass := isSingleChoice ifTrue: [UiRadioButton] ifFalse: [UiCheckBox].

	box addAllMorphs: (self task template collect: [:each |
		buttonClass new
			color: (Color gray: 0.85);
			text: ((ViQueryInterpreter isCollection: each)
				ifTrue: [each first] ifFalse: [each]) asStringOrText;
			hResizing: #spaceFill;
			yourself]).
		
	isSingleChoice ifFalse: [box submorphsDo: [:button | button autoExclusive: false]].

	self connect: box signal: #currentIndexChanged: toSelector: #taskCompleted.

	^ box