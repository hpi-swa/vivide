tests
test29AllPropertiesCycle

	| q p q2 |
	q := [:ea | ea * ea] asScript.
	p := [:n | #text -> n asString] asScript.
	q2 := [:ea | ea + ea] asScript.
	
	q next: p.
	p next: q2.
	q2 next: p.
	
	self assert: 1 equals: q allPropertySteps size.