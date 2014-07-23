tests
test29AllPropertiesCycle

	| q p q2 |
	q := ViQueryStep collect: '[:ea | ea * ea]'.
	p := ViQueryStep property: '[:number | number asString]'.
	q2 := ViQueryStep collect: '[:ea | ea + ea]'.
	
	q next: p.
	p next: q2.
	q2 next: p.
	
	self assert: 1 equals: q allPropertySteps size.