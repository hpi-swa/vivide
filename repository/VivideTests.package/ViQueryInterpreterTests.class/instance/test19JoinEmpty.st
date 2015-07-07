tests
test19JoinEmpty

	self assert: (ViQueryInterpreter productOfCollections: #(1 () (4 5))) isEmpty.