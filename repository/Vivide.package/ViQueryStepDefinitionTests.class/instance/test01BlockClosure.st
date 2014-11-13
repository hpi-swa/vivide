tests
test01BlockClosure

	| tmp |
	sut sourceCode: '[:obj | obj]'.
	self
		assert: sut block isBlock;
		assert: sut block == sut block.
	tmp := sut block.
	sut sourceCode: '[:object | object]'.
	self deny: sut block == tmp.