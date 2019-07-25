tests
test15AutoIdentityScript

	sut objects: #(1 2 3).
	
	self assert: sut knownScripts isEmpty.
	self assert: sut script notNil.
	self assert: #(1 2 3) equals: sut results asArray.