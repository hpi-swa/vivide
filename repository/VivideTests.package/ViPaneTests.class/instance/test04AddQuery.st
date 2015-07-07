as yet unclassified
test04AddQuery

	| prev |
	sut
		currentQuery: [:num | num * num] asScript;
		objects: #(1 2 3).
	
	prev := sut currentQuery.
	sut addQuery.
	
	self
		assert: sut currentQuery ~~ prev;
		deny: (sut queries includes: sut currentQuery).