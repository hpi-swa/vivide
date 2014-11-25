as yet unclassified
test01New

	self
		assert: sut currentQuery isNil;
		assert: sut objects isEmpty;
		assert: sut queries isEmpty;
		assert: sut selectedResults isEmpty;
		assert: sut results isEmpty;
		assert: sut view isNil.