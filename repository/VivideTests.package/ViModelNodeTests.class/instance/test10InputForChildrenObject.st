tests
test10InputForChildrenObject

	| script model |
	script := [:num | #object -> (num * num)] asScript.
	model := script interpretScriptWith: #(2).
	
	self assert: #(4) equals: model firstNode inputForChildren.