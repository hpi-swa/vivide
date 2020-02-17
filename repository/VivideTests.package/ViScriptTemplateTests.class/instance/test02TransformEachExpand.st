tests - general patterns
test02TransformEachExpand

	| script |
	script := [:n | {n. n+1}] asScript.
	self
		assert: script isObjectTransformation;
		assert: #(1 2   2 3   3 4)
		equals: (script process: #(1 2 3)) asArray.