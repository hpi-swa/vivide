tests
test15CategoryNamespaces

	| q |
	q := ViQueryStep collect: '[:ea | ea * ea]'.
	q
		organization: sut;
		id: #test;
		register.
	q definition
		organization: sut;
		id: #test;
		register.
		
	q category: #foo.
	q definition category: #bar.

	self assert: #foo equals: q category.