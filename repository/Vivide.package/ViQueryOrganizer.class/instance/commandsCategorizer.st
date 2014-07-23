accessing
commandsCategorizer

	^ commandsCategorizer ifNil: [commandsCategorizer := Categorizer defaultList: #()]