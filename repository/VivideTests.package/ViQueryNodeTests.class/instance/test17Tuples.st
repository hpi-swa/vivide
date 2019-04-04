tests
test17Tuples

	| q |
	q := {
		[:s | {s. s size} asTuples] 
			-> {#inputKind -> Symbol. #outputKind -> {Symbol. Integer}}.
		[:s :l | #text -> s].
		} asScript.
	sut
		inputForChildren: #(foo bar);
		firstStep: q.

	self
		assert: 2 equals: sut childCount;
		assert: #foo equals: (sut childAt: 1) object;
		assert: #foo equals: ((sut childAt: 1) at: #'1_object');
		assert: 3 equals: ((sut childAt: 1) inputForChildren first "tuple" second);
		assert: ((sut childAt: 1) inputForChildren hasEqualElements: #((foo 3))).