tests - general patterns
test03TransformEachReduce
	" nil should be transformed to #(), an empty list, which should then be appended to the transformation results. See #asList and the corresponding template."

	| script |
	script := [:n | n even ifTrue: [n] ifFalse: [nil]] asScript.
	self
		assert: script isObjectTransformation;
		assert: #(2 4)
		equals: (script process: #(1 2 3 4 5)) asArray.