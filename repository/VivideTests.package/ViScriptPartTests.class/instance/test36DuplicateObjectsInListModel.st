tests
test36DuplicateObjectsInListModel
	"It should be possible to have duplicate objects in a list model."
	
	| script node |
	script := [:num | num] asScript.
	node := script interpretScriptWith: #(5 5 0 0).

	self assert: 4 equals: node allObjects size.