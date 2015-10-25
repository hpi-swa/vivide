tests
test21DirectLoopSelfUpdate

	| other |
	other := ViPane new
		currentQuery: [:b | b * 2] asScript;
		yourself.

	sut currentQuery: [:a | a + 1] asScript.

	(ViResultsConnection from: sut to: other) attach.
	(ViResultsConnection from: other to: sut) attach.

	sut beginUpdateChainWith: [sut objects: #(1)].
	self assert: (#(2) hasEqualElements: other objects).
	self assert: (#(4) hasEqualElements: other results).
	self assert: (#(5) hasEqualElements: sut results). "Gets two updates because of forceUpdate in ViPane"