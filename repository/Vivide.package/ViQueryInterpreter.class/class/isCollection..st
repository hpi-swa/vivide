as yet unclassified
isCollection: anObject

	^ (((anObject isCollection
		and: [anObject isSequenceable])
		and: [anObject isString not])
		and: [anObject isText not])
		and: [anObject isCompiledMethod not]