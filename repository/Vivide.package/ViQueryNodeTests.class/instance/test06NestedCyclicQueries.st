tests
test06NestedCyclicQueries
	"NEVER Break the cycle if results are empty."
	
	| innerQuery1 innerQuery2 outerQuery1 outerQuery2 |
	innerQuery1 := ViQueryStep transform: '[:objs | objs ifNotEmpty: [objs allButLast]]'.
	innerQuery2 := ViQueryStep property: '[:ea | ea asString]'.
	innerQuery1 next: innerQuery2.
	innerQuery2 next: innerQuery1.

	outerQuery1 := ViQueryStep reference: innerQuery1.
	outerQuery2 := ViQueryStep transform: '[{Morph new}]'.
	outerQuery1 next: outerQuery2.
		
	sut firstStep: (ViQueryStep use: #(1 2 3) in: outerQuery1).
	self
		assert: 2 equals: sut childCount;
		assert: '1' equals: ((sut childAt: 1) at: #'1_text');
		assert: '2' equals: ((sut childAt: 2) at: #'1_text');
		assert: 0 equals: (sut childAt: 1) childCount; "morph"
		assert: 0 equals: (sut childAt: 2) childCount. "morph"