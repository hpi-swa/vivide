tests - tuple patterns
test04TupleUnpackExtractEachWithObjects

	| script |
	script := [:a :b :c | #abc -> (a + b - c). #ab -> (a+b). #bc -> (b - c).
		#objects -> #(1 2 3)] asScript.
	
	self
		assert: script isPropertyExtraction;
		assert: {
			{ #abc -> 13. #ab -> 15. #bc -> 3.
				#object -> 10. #objects -> #(1 2 3) }.
			{ #abc -> 2. #ab -> 8. #bc -> -5.
				#object -> 7. #objects -> #(1 2 3)}}
		equals: (script process: #( (10 5 2) (7 1 6) )) asArray