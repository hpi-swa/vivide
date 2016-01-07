tests
test20ExtractionConsistency

	| script |
	script := {
		[:num | #text -> num asString. #object -> (num * num)].
		[:num | num + num].
	} asScript.

	sut := ViQueryInterpreter on: (ViQueryStep use: #(5) in: script).
	sut upToDetect: [:step | step == script steps second].

	self assert: 1 equals: sut allObjects size.
	self assert: 50 equals: sut allObjects first.