tests
test06InfiniteRecursion

	| script node |
	script := {
		[:num | num + 1].
		[:num | #text -> num asString].
		1.
	} asScript.
	node := script interpretScriptWith: #(0).
	
	1 to: 1000 do: [:index |
		node := node firstNode.
		self
			assert: index equals: node depth;
			assert: index equals: node object].
	
	"There is still more."
	self assert: node nodes notEmpty.