tests
test24NextLabel

	| q1 q2 |
	q1 := ViQueryStep collect: '[:ea | ea * ea]'.
	q2 := ViQueryStep select: '[:number | number event]'.
	q1 next: q2.
	
	self assert: q1 nextLabel isNil.
	q1 label: 'Foo'.
	self
		assert: 'Foo' equals: q1 label;
		assert: 'Foo' equals: q1 nextLabel;
		assert: q2 nextLabel isNil.
		
	q1 label: nil.
	q2 label: 'Bar'.
	self assert: 'Bar' equals: q1 nextLabel.