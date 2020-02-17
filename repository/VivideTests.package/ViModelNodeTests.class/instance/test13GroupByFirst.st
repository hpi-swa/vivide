tests
test13GroupByFirst

	| script model |
	script := {
			[:n | { {n odd. n} } "Make it a tuple."].
			[:tuples | tuples asGroups "Group by first object in each tuple" ].
			[:group :content | {
				group ifTrue: [#odd] ifFalse: [#even] },
				content ].
			[:tuple | tuple "Flatten all."].
	} asScript.
	model := script interpretScriptWith: #(1 2 3 4 5 6).
	
	self assert: #(odd 1 3 5 even 2 4 6) equals: model objects.