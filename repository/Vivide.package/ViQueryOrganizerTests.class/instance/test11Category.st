tests
test11Category

	| q |
	q := [:ea | ea * ea] asScript.
	q adoptOrganization: sut.
		
	self assert: q category isNil.
	q category: #test.
	self
		assert: #test equals: q category;
		assert: q definition category isNil.

	q category: nil.
	self assert: q category isNil.