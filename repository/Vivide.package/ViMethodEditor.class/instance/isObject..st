testing - object
isObject: anObject

	^ self object == anObject
		"Consider the conversions between other representations of methods/messages to method references, e.g. compiled methods."
		or: [self object notNil and: [self object methodReference = anObject]]