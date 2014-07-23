accessing
queryModel

	^ queryModel ifNil: [queryModel := ViQueryNode new firstStep: (ViQueryFillStep new objects: #())]