as yet unclassified
test10TupleInput

	| provider1 provider2 q |
	q := [:obj | obj] asQuery.
	
	provider1 := ViPane new.
	sut listenForSelectionsFrom: provider1.
	provider1
		currentQuery: q;
		objects: #(a b).
	provider1 view currentVisibleView selectAll. 
	
	self assert: (sut objects hasEqualElements: #(a b)).

	provider2 := ViPane new.
	sut listenForSelectionsFrom: provider2.
	"self assert: (sut objects hasEqualElements: #((a b)()))."
	provider2
		currentQuery: q;
		objects: #(3 4).
	provider2 view currentVisibleView selectAll.

	self
		assert: (sut objects first hasEqualElements: #(a b));
		assert: (sut objects second hasEqualElements: #(3 4)).