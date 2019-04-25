tests - enumeration
test14NextExtractionSteps

	| script |
	script := {
		[:num | num + 1].
		[:num | #text -> num asString] -> { #id -> #one }.
		[:num | num * num].
		[:num | #text -> num asString] -> { #id -> #two }.
	} asScript.
	
	self
		assert: #(one)
		equals: (script nextExtractionSteps collect: [:ea | ea id]) asArray.