as yet unclassified
test10TupleInput

	| provider1 provider2 q |
	q := [:obj | obj] asQuery.
	
	provider1 := ViPane new.
	(ViSelectionConnection from: provider1 to: sut) attach.
	provider1
		currentQuery: q;
		objects: #(a b).
	provider1 view currentVisibleView selectAll. 
	
	self assert: (sut objects hasEqualElements: #(a b)).

	provider2 := ViPane new.
	(ViSelectionConnection from: provider2 to: sut) attach.
	"self assert: (sut objects hasEqualElements: #((a b)()))."
	provider2
		currentQuery: q;
		objects: #(3 4).
	provider2 view currentVisibleView selectAll.

	self
		assert: (sut objects first hasEqualElements: #(a b));
		assert: (sut objects second hasEqualElements: #(3 4)).