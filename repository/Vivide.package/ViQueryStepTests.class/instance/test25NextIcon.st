tests
test25NextIcon

	| q1 q2 |
	q1 := ViQueryStep collect: '[:ea | ea * ea]'.
	q2 := ViQueryStep select: '[:number | number event]'.
	q1 next: q2.
	
	self assert: q1 nextIcon isNil.
	q1 icon: Morph new.
	self assert: q1 icon equals: q1 nextIcon.
		
	q1 icon: nil.
	q2 icon: Morph new.
	self assert: q2 icon equals: q1 nextIcon.