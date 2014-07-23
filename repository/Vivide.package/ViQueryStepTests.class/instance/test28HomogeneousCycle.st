tests
test28HomogeneousCycle

	| q p q2 |
	q := ViQueryStep collect: '[:ea | ea * ea]'.
	p := ViQueryStep property: '[:number | number asString]'.

	q next: p.
	self assert: q isHomogeneous.
	
	p next: q.
	self assert: q isHomogeneous.
	
	q2 := ViQueryStep collect: '[:ea | ea + ea]'.
	p next: q2.
	q2 next: q.
	self assert: q isHomogeneous.