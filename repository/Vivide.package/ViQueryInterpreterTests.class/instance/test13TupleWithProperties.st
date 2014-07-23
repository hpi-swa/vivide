as yet unclassified
test13TupleWithProperties

	| q |
	q := ViQueryStep convertList: {
		[:num | {num. num even}] -> {Integer. {Integer. Boolean}}.
		[:num :even | {
			#text -> num asString.
			#icon -> (even
				ifTrue: [UiFugueIcons tickSmallIcon]
				ifFalse: [UiFugueIcons crossSmallIcon])}] -> {{Integer.Boolean}.Object}
	}.
	sut := ViQueryInterpreter on: (ViQueryStep use: #((1 2) (3 4)) in: q).
	sut upToNextProperties.

	self
		assert: (sut allObjects hasEqualElements: #((1 false)(2 true)(3 false)(4 true)));
		assert: ((sut propertiesFor: sut allObjects first) includesKey: #'1_text').