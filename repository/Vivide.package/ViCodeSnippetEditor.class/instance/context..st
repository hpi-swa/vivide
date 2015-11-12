accessing - object
context: someObjects

	someObjects ifNil: [^ self context: #()].
		
	snippetEdit model doItReceiver:
		((someObjects asList copyWithout: self object)
			ifEmpty: [nil]
			ifNotEmpty: [:objs | objs size = 1
				ifTrue: [objs first]
				ifFalse: [objs]]).