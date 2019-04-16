tests
test19JoinEmpty

	self assert: (ViScriptInterpreter productOfCollections: #(1 () (4 5))) isEmpty.