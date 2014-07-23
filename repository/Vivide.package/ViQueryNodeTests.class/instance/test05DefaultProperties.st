tests
test05DefaultProperties

	sut firstStep: (ViQueryStep
		use: #(1 2 3)
		in: (ViQueryStep collect: '[:ea | ea + 1]')).
	self
		assert: 3 equals: sut childCount;
		assert: 2 asString equals: ((sut childAt: 1) at: #'1_text');
		assert: 3 asString equals: ((sut childAt: 2) at: #'1_text');
		assert: 4 asString equals: ((sut childAt: 3) at: #'1_text').