tests
test05ReturnRemovedObject

	sut addObject: String.  
	self assert: String equals: (sut removeObject: String).