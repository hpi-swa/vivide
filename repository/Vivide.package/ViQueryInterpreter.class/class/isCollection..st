collection handling
isCollection: anObject

	^ ((((anObject isCollection
		and: [anObject isSequenceable])
		and: [anObject isString not])
		and: [anObject isText not])
		and: [anObject isCompiledMethod not])
		and: [(anObject isKindOf: ByteArray) not]