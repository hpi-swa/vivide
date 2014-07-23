testing - object
knowsObject: anObject

	self object ifNil: [^ nil].

	(anObject isBehavior and: [anObject inheritsFrom: self object])
		ifTrue: [^ #super].
	(anObject isBehavior and: [self object inheritsFrom: anObject])
		ifTrue: [^ #sub].
	anObject class == self object
		ifTrue: [^ #class].
	(anObject isKindOf: self object)
		ifTrue: [^ #kindOf].
		
	^ super knowsObject: anObject