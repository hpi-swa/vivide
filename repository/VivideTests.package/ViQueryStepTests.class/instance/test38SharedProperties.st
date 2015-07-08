tests
test38SharedProperties
	"Query steps share properties with their definitions."

	sut := [:objs | objs] asScript.

	self assert: (sut valueOfProperty: #testProperty) isNil.
	sut definition setProperty: #testProperty toValue: #check.
	self assert: (sut valueOfProperty: #testProperty) = #check.
	sut setProperty: #testProperty toValue: #flower.
	self assert: (sut valueOfProperty: #testProperty) = #flower.
	self assert: (sut definition valueOfProperty: #testProperty) = #check.