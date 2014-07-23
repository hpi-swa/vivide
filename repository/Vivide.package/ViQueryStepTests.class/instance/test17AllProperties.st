tests
test17AllProperties

	| q1 q2 |
	q1 := ViQueryStep collect: '[:ea | ea * ea]'.
	q2 := ViQueryStep property: '[:num | num asString]'.
	q1 next: q2.
	self assert: q1 maxPropertyCount equals: q1 allPropertySteps size.
	
	q1 next: nil. "use default properties"
	self assert: q1 maxPropertyCount equals: q1 allPropertySteps size.