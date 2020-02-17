interpretation
viewClass
	"Returns the class for the preferred view. Those are classes or blocks. See TViObjectView trait and its implementors."

	self nextStepsDo: [:step |
		(step valueOfProperty: #view) ifNotNil: [:objectViewClass | ^ objectViewClass value "Supports blocks"]].
	
	"Fall back."
	^ (ViProfile active ifNil: [ViTreePlainView] ifNotNil: [:profile | profile defaultView])