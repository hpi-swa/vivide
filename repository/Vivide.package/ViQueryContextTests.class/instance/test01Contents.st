tests
test01Contents

	self assert: sut contents isNil.
	sut contents: #test01Contents.
	self assert: #test01Contents equals: sut contents.