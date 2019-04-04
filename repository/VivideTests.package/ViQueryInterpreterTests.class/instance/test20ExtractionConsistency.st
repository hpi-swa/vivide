tests
test20ExtractionConsistency

	| script |
	script := {
		[:num | #text -> num asString. #object -> (num * num)].
		[:num | num + num].
	} asScript.

	sut := ViQueryInterpreter on: script using: #(5).
	sut upToDetect: [:step | step == script steps second].

	self assert: 1 equals: sut objects size.
	self assert: 50 equals: sut objects first.