tests - copying & serialization
test09AsDictionary

	| step stepDict definitionDict |
	step := {
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.

	stepDict := step asDictionary.
	definitionDict := step definition asDictionary.

	self
		assert: step id equals: (stepDict at: #id);
		assert: step next id equals: (stepDict at: #next);
		assert: step definition id equals: (stepDict at: #definition);
		"The source code is only stored in the definition."
		assert: step sourceCode equals: (definitionDict at: #sourceCode). 