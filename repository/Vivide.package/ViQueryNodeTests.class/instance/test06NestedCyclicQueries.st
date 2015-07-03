tests
test06NestedCyclicQueries
	"NEVER Break the cycle if results are empty."
	
	| innerQuery outerQuery |
	innerQuery := {
		[:objs | objs select: [:num | num odd]].
		[:ea | #text -> ea asString]} asScript.
	innerQuery steps last next: innerQuery.

	outerQuery := innerQuery asReference.
	outerQuery next: [{Morph new}] asScript.
		
	sut firstStep: (ViQueryStep use: #(1 2 3) in: outerQuery).
	self
		assert: 2 equals: sut childCount;
		assert: '1' equals: ((sut childAt: 1) at: #'1_text');
		assert: '3' equals: ((sut childAt: 2) at: #'1_text');
		assert: 1 equals: (sut childAt: 1) childCount; "morph"
		assert: 1 equals: (sut childAt: 2) childCount. "morph"