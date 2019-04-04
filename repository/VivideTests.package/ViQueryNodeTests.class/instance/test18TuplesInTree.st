tests
test18TuplesInTree

	| q n |
	q := {
		[:s | {s. s size} asTuples] 
			-> {#inputKind -> Symbol. #outputKind -> {Symbol. Integer}}.
		[:s :l | #text -> s].
		[:sym :size | {size. size * 2}]
			-> {#inputKind -> {Symbol.Integer}. #outputKind -> Integer}.
	} asScript.
	sut
		inputForChildren: #(foo bary);
		firstStep: q.

	n := sut childAt: 1.
	self
		assert: 2 equals: n childCount;
		assert: 3 equals: (n childAt: 1) object;
		assert: 6 equals: (n childAt: 2) object;
		assert: (n childAt: 2) inputForChildren = #(6).