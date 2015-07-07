tests
test01SetProperty
	"Each item is only once in the history."
	
	self assert: 0 equals: sut size.    
	sut addObject: String.
	sut addObject: String.
	self assert: 1 equals: sut size.    