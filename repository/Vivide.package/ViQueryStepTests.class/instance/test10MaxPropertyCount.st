tests
test10MaxPropertyCount

	| numDefaults tmp q1 p1 p2 r1 |
	numDefaults := 0.
	tmp := ViQueryStep defaultProperties.
	[tmp notNil] whileTrue: [numDefaults := numDefaults + 1. tmp := tmp next].

	self
		assert: numDefaults equals: ViQueryStep defaultProperties maxPropertyCount;
		assert: numDefaults equals: (ViQueryFillStep new objects: #(1 2 3 4 5)) maxPropertyCount.
		
	q1 := ViQueryStep collect: '[:ea | ea * ea]'.
	p1 := ViQueryStep property: '[:o | o asString]'.
	q1 next: p1.
	self assert: 1 equals: q1 maxPropertyCount.
	p1 next: q1. "cycle"
	self assert: 1 equals: q1 maxPropertyCount.
	
	"no chaining of nested properties"
	p2 := ViQueryStep property: '[:o | o class name]'.
	r1 := ViQueryStep reference: p2.
	q1 next: r1.
	r1 next: p1.
	p1 next: nil.
	self assert: 1 equals: q1 maxPropertyCount.
	
	p1 next: r1.
	r1 next: nil.
	self assert: 1 equals: p1 maxPropertyCount.