collection handling
isCollection: anObject

	self flag: #refactor. "mt: Use #asList if possible."
	^ ((((anObject isCollection
		and: [anObject isSequenceable])
		and: [anObject isString not])
		and: [anObject isText not])
		and: [anObject isCompiledMethod not])
		and: [(anObject isKindOf: ByteArray) not]