accessing
stepsCategorizer

	^ stepsCategorizer ifNil: [stepsCategorizer := Categorizer defaultList: #()]