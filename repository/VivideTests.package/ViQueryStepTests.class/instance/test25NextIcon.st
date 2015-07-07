tests
test25NextIcon

	| q1 q2 |
	q1 := [:ea | ea * ea] asScript.
	q2 := [:numbers | numbers select: [:number | number even]] asScript.
	q1 next: q2.
	
	self assert: q1 nextIcon isNil.
	q1 icon: Morph new.
	self assert: q1 icon equals: q1 nextIcon.
		
	q1 icon: nil.
	q2 icon: Morph new.
	self assert: q2 icon equals: q1 nextIcon.