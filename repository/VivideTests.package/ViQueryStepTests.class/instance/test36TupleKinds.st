tests
test36TupleKinds

	| q |
	q := ViScriptPart convert: [:a :b | a + b].
	q definition setProperty: #inputKind toValue: {Integer.Integer}.
	q definition setProperty: #outputKind toValue: Integer.
	self
		assert: q definition inputKind = {Integer.Integer};
		assert: q definition outputKind = Integer.
	q := ViScriptPart convert: [:a :b | a + b].
	q definition setProperty: #inputKind toValue: Integer.
	q definition setProperty: #outputKind toValue: Integer.
	self
		assert: q definition inputKind = Integer;
		assert: q definition outputKind = Integer.
	q := ViScriptPart convert: [:a :b | a + b].
	q definition setProperty: #inputKind toValue: Integer.
	q definition setProperty: #outputKind toValue: {Integer.Integer}.
	self
		assert: q definition outputKind = {Integer.Integer};
		assert: q definition inputKind = Integer.