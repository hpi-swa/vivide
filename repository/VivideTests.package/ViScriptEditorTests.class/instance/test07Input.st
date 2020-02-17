tests - multiple
test07Input

	self setUpWindow: #(1 2 3).
	self assert: (editor input hasEqualElements: #(1 2 3)).