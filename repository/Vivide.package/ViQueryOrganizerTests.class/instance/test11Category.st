tests
test11Category

	| q |
	q := ViQueryStep collect: '[:ea | ea * ea]'.
	q organization: sut; register.
	
	self assert: q category isNil.
	q category: #test.
	self
		assert: #test equals: q category;
		assert: q definition category isNil.

	q category: nil.
	self assert: q category isNil.