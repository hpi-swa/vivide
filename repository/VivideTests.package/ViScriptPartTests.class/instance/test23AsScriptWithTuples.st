tests
test23AsScriptWithTuples

	[:a :b | a + b] asScript in: [:script |
		self assert: #(nil nil) equals: (script valueOfProperty: #inputKind)].