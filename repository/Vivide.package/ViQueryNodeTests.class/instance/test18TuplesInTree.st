tests
test18TuplesInTree

	| q n |
	q := ViQueryStep convertList: {
		[:s | {s. s size}] -> {Symbol. {Symbol. Integer}}.
		[:sym :size | #text -> sym] -> {{Symbol.Integer}. Object}.
		[:sym :size | {size.size*2}] -> {{Symbol.Integer}. Integer}.
	}.
	sut firstStep: (ViQueryStep use: #(foo bary) in: q).

	n := sut childAt: 1.
	self
		assert: 2 equals: n childCount;
		assert: 3 equals: (n childAt: 1) object;
		assert: 6 equals: (n childAt: 2) object;
		assert: (n childAt: 2) inputForChildren = 6.