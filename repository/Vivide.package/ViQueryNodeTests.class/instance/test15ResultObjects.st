tests
test15ResultObjects

	| q p |
	p := ViQueryStep property: '[:cls | cls name]'.
	q := ViQueryStep collect: '[:cls | cls subclasses]'.
	p next: q.
	
	sut firstStep: (ViQueryStep use: {Morph} in: p).

	self
		assert: 1 equals: sut childCount;
		assert: sut objects first = Morph.