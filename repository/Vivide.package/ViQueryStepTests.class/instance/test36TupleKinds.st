as yet unclassified
test36TupleKinds

	| q |
	q := ViQueryStep convert: [:a :b | a + b] -> {{Integer.Integer}.Integer}.
	self
		assert: q definition inputKind = {Integer.Integer};
		assert: q definition outputKind = Integer.
	q := ViQueryStep convert: [:a :b | a + b] -> {{Integer}.{Integer}}.
	self
		assert: q definition inputKind = Integer;
		assert: q definition outputKind = Integer.
	q := ViQueryStep convert: [:a :b | a + b] -> {Integer.{Integer.Integer}}.
	self
		assert: q definition outputKind = {Integer.Integer};
		assert: q definition inputKind = Integer.