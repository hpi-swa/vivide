tests
test22DeferredLoop

	| pa pb pc |
	pa := sut currentQuery: [:a | a] asScript; yourself.
	pb := ViPane new currentQuery: [:b | b] asScript; yourself.
	pc := ViPane new currentQuery: [:a :b | a + b] asScript; yourself.
	
	pb objects: #(5).
	
	(ViResultsConnection from: pa to: pc) attachSilently.
	(ViResultsConnection from: pb to: pc) attachSilently.
	(ViResultsConnection from: pc to: pa) attachSilently.

	pa beginUpdateChainWith: [pa objects: #(1)].
	self deny: (#(6) hasEqualElements: pa objects).

	"Deferred update."
	ActiveWorld doOneSubCycle.
	self assert: (#(6) hasEqualElements: pa objects).

	"Update has finished."
	ActiveWorld doOneSubCycle.
	self assert: (#(6) hasEqualElements: pa objects).