tests
test13CategoryIdChange

	| q |
	q := [:ea | ea * ea] asScript.
	q adoptOrganization: sut.

	q id: #test13CategoryIdChnage.
	self assert: q category isNil.

	q category: #test.
	self assert: #test equals: q category.

	q id: #foobar.
	self assert: #test equals: q category.