tests
test10MaxPropertyCount

	| numDefaults q1 p1 p2 r1 |
	numDefaults := #defaultProperties asScript steps size.

	self
		assert: numDefaults equals: #defaultProperties asScript maxPropertyCount;
		assert: numDefaults equals: [#(1 2 3 4 5)] asScript maxPropertyCount.
		
	q1 := [:ea | ea * ea] asScript.
	p1 := [:o | #text -> o asString] asScript.
	q1 next: p1.
	self assert: 1 equals: q1 maxPropertyCount.
	p1 next: q1. "cycle"
	self assert: 1 equals: q1 maxPropertyCount.
	
	"chaining of nested properties"
	p2 := [:o | #text -> o class name] asScript.
	r1 := p2 asReference.
	q1 next: r1.
	r1 next: p1.
	p1 next: nil.
	q1 adoptOrganization: q1 organization.
	p2 adoptOrganization: q1 organization.
	self assert: 2 equals: q1 maxPropertyCount.
	
	p1 next: r1.
	r1 next: nil.
	self assert: 1 equals: p1 maxPropertyCount.