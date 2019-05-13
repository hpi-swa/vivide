tests
test09InputForChildren

	| script model |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	model := script interpretScriptWith: #(2 3 4).
	
	self
		assert: #(2 3 4) equals: model inputForChildren;
		assert: #(4) equals: model firstNode inputForChildren.
	
	"Even if there is input, there has to be a script to process that input to create child nodes."
	self
		assert: #(16) equals: model firstNode firstNode inputForChildren;
		assert: 0 equals: model firstNode firstNode nodeCount.