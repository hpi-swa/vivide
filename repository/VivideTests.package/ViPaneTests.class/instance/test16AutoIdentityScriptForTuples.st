tests
test16AutoIdentityScriptForTuples

	sut objects: #((a 5)(b 2)(c 7)).

	"The pane suggests a tuple size if there are no input conections based on the current objects."
	self assert: #(nil nil) equals: (sut currentQuery valueOfProperty: #inputKind).