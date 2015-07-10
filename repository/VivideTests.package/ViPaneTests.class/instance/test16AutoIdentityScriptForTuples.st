tests
test16AutoIdentityScriptForTuples

	sut objects: #((a 5)(b 2)(c 7)).
	
	"The pane cannot know about the tuple size because it has now input connections."
	self assert: nil equals: (sut currentQuery valueOfProperty: #inputKind).