tests - enumeration
test11AllExtractionSteps

	| script |
	script := {
		[:num | num + 1].
		[:num | #text -> num asString] -> { #id -> #one }.
		[:num | num * num].
		[:num | #text -> num asString] -> { #id -> #two }.
	} asScript.
	
	self
		assert: #(one two)
		equals: (script allExtractionSteps collect: [:ea | ea id]) asArray.