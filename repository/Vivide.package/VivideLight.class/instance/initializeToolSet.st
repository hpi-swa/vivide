initialization
initializeToolSet

	(Smalltalk classNamed: #ViToolSet)
		ifNotNil: [:ts | 
			self setProperty: #previousToolSet toValue: ToolSet default. 
			ToolSet default: ts].