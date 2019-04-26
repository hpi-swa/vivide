tests
test35BaseClassWithTuples

	| q |
	q := [:a :b | a + b] asScript.
	q setProperty: #inputKind toValue: {Integer.Integer}.
	q setProperty: #outputKind toValue: Integer.

	self assert: (q baseClass hasEqualElements: {Integer.Integer}).