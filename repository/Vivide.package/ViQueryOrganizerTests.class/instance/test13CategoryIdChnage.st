tests
test13CategoryIdChnage

	| q |
	q := ViQueryStep collect: '[:ea | ea * ea]'.
	q organization: sut; register.

	q id: #test13CategoryIdChnage.
	self assert: q category isNil.

	q category: #test.
	self assert: #test equals: q category.

	q id: #foobar.
	self assert: #test equals: q category.