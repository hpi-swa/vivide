accessing - query
queryChooser

	^ queryChooser ifNil: [queryChooser := ViQueryChooser new]