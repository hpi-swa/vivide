accessing
appropriateQueries
	"Current query is most appropriate if not nil and still matching the type filter. Prepend it; thenn append others."
	
	| baseClasses |
	self tupleSize > 1 ifTrue: [
		^ ((self currentQuery notNil and: [self currentQuery inputCount = self tupleSize])
			ifTrue: [{self currentQuery}]
			ifFalse: [{}]),
				(self queries value select: [:query | query inputCount = self tupleSize
					or: [query baseClass = Object "fallback...should work...allows for cloning"]])].

	baseClasses := ViQueryStepDefinition collectBaseClassesForContext: self objects.

	^ ((self currentQuery notNil and: [self objects isEmpty or: [baseClasses includes: self currentQuery baseClass]])
		ifTrue: [{self currentQuery}]
		ifFalse: [{}]), 
			(self queries value select: [:query | (query isRegistered not or: [query nextLabel notNil]) and: [
				(query isGlobal not & self objects notEmpty and: [baseClasses includes: query baseClass])
					or: [query isGlobal & self objects isEmpty]]])