tests
test35BaseClassWithTuples

	| q |
	q := ViScriptPart convert: [:a :b | a + b].
	q setProperty: #inputKind toValue: {Integer.Integer}.
	q setProperty: #outputKind toValue: Integer.

	self assert: (q baseClass hasEqualElements: {Integer.Integer}).