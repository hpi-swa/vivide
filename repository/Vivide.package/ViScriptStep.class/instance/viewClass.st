interpretation
viewClass
	"Returns the class for the preferred view. Those are classes or blocks. See TViObjectView trait and its implementors."
	
	^ ((self valueOfProperty: #view)
		ifNil: [ViProfile active ifNil: [ViTreePlainView] ifNotNil: #defaultView])
			value "Supports blocks."