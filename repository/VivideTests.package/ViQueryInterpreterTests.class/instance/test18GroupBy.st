tests
test18GroupBy

	| q |
	q := {
			[:n | {n odd. n} asTuples].
			[:tuples | tuples asGroups].
			[:group :content | {{
				group ifTrue: [#odd] ifFalse: [#even].
				content}} "Nest to keep groups"]
		} asScript.
	
	sut := ViScriptInterpreter on: q using: #(1 2 3 4 5 6).
	sut upToEnd.

	self assert: (sut objects hasEqualElements: #( (odd ((1)(3)(5))) (even ((2) (4) (6))) )).