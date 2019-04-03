tests - general patterns
test01TransformEach

	| script |
	script := [:n | n * n] asScript.
	self
		assert: script isObjectTransformation;
		assert: #(1 4 9 16 25)
		equals: (script process: #(1 2 3 4 5)) asArray.