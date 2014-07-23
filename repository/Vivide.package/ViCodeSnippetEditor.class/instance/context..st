accessing - object
context: someObjects

	someObjects ifNil: [^ self context: #()].

	(ViQueryInterpreter isCollection: someObjects)
		ifFalse: [^ self context: {someObjects}].
		
	snippetEdit model doItReceiver:
		((someObjects copyWithout: self object)
			ifEmpty: [nil]
			ifNotEmpty: [:objs | objs size = 1
				ifTrue: [objs first]
				ifFalse: [objs]]).