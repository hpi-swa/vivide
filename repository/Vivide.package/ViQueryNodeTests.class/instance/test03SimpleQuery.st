tests
test03SimpleQuery

	| query |
	query := ((ViQueryStep collect: '[:ea | ea + 1]')
		next: (ViQueryStep property: '[:ea | #text -> ea asString]')).
		
	sut firstStep: (ViQueryStep use: #(1 2 3) in: query).
	self
		assert: 3 equals: sut childCount;
		assert: '2' equals: ((sut childAt: 1) at: #'1_text');
		assert: '3' equals: ((sut childAt: 2) at: #'1_text');
		assert: '4' equals: ((sut childAt: 3) at: #'1_text').