tests - extraction patterns
test04ExtractNew

	| script |
	script := [#text -> 'New'. #object -> 42] asScript.
	self
		assert: script isPropertyExtraction;
		assert: { {#objects -> #(1 2) asOrderedCollection. #text -> 'New'. #object -> 42} }
		equals: (script process: #(1 2)) asArray.