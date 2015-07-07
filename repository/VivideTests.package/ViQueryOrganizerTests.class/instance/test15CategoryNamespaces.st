tests
test15CategoryNamespaces

	| q |
	q := [:ea | ea * ea] asScript.
	q
		adoptOrganization: sut;
		id: #test.
	q definition id: #test.
		
	q category: #foo.
	q definition category: #bar.

	self assert: #foo equals: q category.