as yet unclassified
test06ReferencedProperties

	| q1 p1 ref p2 |
	q1 := ViQueryStep collect: '[:num | num * num]'.
	p1 := ViQueryStep property: '[:num | num asString]'.
	q1 next: p1.
	ref := ViQueryStep reference: q1.
	p2 := ViQueryStep property: '[:num | num asString size asString]'.
	ref next: p2.
	
	sut := ViQueryInterpreter on: (ViQueryStep use: #(1 2 3 4) in: ref).
	sut upToNextProperties.

	self
		assert: ref isHomogeneous not;
		assert: 6 equals: (sut propertiesFor: 16 "4*4") size.