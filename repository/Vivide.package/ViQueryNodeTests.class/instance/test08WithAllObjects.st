tests
test08WithAllObjects

	| packageName q1 p q2 q3 |
	packageName := #Morphic.
	
	q1 := ViQueryStep transform: '[:classes :context |
		context contents: classes.
		classes reject: [:cls | classes includes: cls superclass]]'.
	p := ViQueryStep property: '[:cls | cls name]'.
	q2 := ViQueryStep collect: '[:cls | cls subclasses]'.
	q3 := ViQueryStep transform: '[:classes :context | classes select: [:cls |
		context contents includes: cls]]'.

	q1 next: p.
	p next: q2.
	q2 next: q3.
	q3 next: p.
	
	sut firstStep: (ViQueryStep use: (PackageInfo named: packageName) classes in: q1).
	
	self
		assert: sut childCount < sut firstStep objects size;
		assert: sut allObjects size = sut firstStep objects size.