tests
test01BlockClosure

	| tmp |
	sut sourceCode: '[:obj | obj]'.
	self
		assert: sut block isBlock;
		assert: sut block == sut block.
	tmp := sut block.
	sut
		sourceCode: nil; "bypass check"
		sourceCode: '[:obj | obj]'.
	self deny: sut block == tmp.