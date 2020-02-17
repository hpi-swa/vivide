tests - tuples and groups
test04GroupByFirst

	| script interpreter |
	script := {
			[:n | { {n odd. n} } "Make it a tuple."].
			[:tuples | tuples asGroups "Group by first object in each tuple" ].
			[:group :content | { {
				group ifTrue: [#odd] ifFalse: [#even].
				content} } "Nest to keep groups"]
	} asScript.
	
	interpreter := ViScriptInterpreter on: script using: #(1 2 3 4 5 6).
	interpreter upToEnd.

	self assert: (interpreter objects hasEqualElements: #( (odd ((1)(3)(5))) (even ((2) (4) (6))) )).