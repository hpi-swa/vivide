as yet unclassified
test35BaseClassWithTuples

	| q |
	q := ViScriptPart convert: [:a :b | a + b].
	q definition setProperty: #inputKind toValue: {Integer.Integer}.
	q definition setProperty: #outputKind toValue: Integer.
	 
	self assert: (q baseClass hasEqualElements: {Integer.Integer}).