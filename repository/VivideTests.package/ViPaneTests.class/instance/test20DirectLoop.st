tests
test20DirectLoop

	| other |
	other := ViPane new
		script: [:b | b * 2] asScript;
		yourself.

	sut script: [:a | a / 2] asScript.

	(ViResultsConnection from: sut to: other) attach.
	(ViResultsConnection from: other to: sut) attach.

	sut beginUpdateChainWith: [sut objects: #(2)].
	self assert: (#(1) hasEqualElements: sut results).
	self assert: (#(1) hasEqualElements: other objects).
	self assert: (#(2) hasEqualElements: other results).

	other beginUpdateChainWith: [other objects: #(8)].
	self assert: (#(16) hasEqualElements: other results).
	self assert: (#(16) hasEqualElements: sut objects).
	self assert: (#(8) hasEqualElements: sut results).