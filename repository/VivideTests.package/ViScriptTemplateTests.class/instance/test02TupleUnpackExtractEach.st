tests - tuple patterns
test02TupleUnpackExtractEach

	| script |
	script := [:a :b :c | #abc -> (a + b - c). #ab -> (a+b). #bc -> (b - c)] asScript.
	
	self
		assert: script isPropertyExtraction;
		assert: {
			{ #abc -> 13. #ab -> 15. #bc -> 3.
				#object -> 10. #objects -> #(10 5 2) }.
			{ #abc -> 2. #ab -> 8. #bc -> -5.
				#object -> 7. #objects -> #(7 1 6)}}
		equals: (script process: #( (10 5 2) (7 1 6) )) asArray