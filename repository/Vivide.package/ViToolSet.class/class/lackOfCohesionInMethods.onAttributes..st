as yet unclassified
lackOfCohesionInMethods: someMethods onAttributes: someInstVarNames

	| edges vertices numEdges numVertices singleComponent current |
	edges := self selectInGraphFromMethods: someMethods thatAccess: someInstVarNames.

	current := edges anyOne anyOne.
	vertices := (someMethods copyWithout: current) asOrderedCollection.
	singleComponent := true.
	
	"[singleComponent not or: [vertices isEmpty]] whileFalse: [
		edges
			detect: [:edge | edge includes: current]
			ifFound: [:edge |
				current := (edge copyWithout: current) anyOne.
				vertices remove: current ifAbsent: []]
			ifNone: [singleComponent := false]]."
	
	singleComponent ifFalse: [^ -1].
	

	numEdges := edges size.
	numVertices := someMethods size.
	
	numVertices <= 2 ifTrue: [^ -1].
	
	^ (2 * ((numEdges - (numVertices - 1)) / ((numVertices - 1) * (numVertices - 2)))) max: 0