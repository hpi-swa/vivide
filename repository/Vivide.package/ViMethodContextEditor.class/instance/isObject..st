testing - object
isObject: anObject

	^ self object == anObject
		or: [self object notNil and: [self object method == anObject
			or: [self object method methodReference = anObject]]]