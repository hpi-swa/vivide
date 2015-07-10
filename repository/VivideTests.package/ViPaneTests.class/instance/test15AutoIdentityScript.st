tests
test15AutoIdentityScript

	sut objects: #(1 2 3).
	
	self assert: sut queries isEmpty.
	self assert: sut currentQuery notNil.
	self assert: #(1 2 3) equals: sut results asArray.