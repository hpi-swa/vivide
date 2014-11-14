tests
test28HomogeneousCycle

	| q p q2 |
	q := [:ea | ea * ea] asScript.
	p := [:n | #text -> n asString] asScript.

	q next: p.
	self assert: q isHomogeneous.
	
	p next: q.
	self assert: q isHomogeneous.
	
	q2 := [:ea | ea + ea] asScript.
	p next: q2.
	q2 next: q.
	self assert: q isHomogeneous.