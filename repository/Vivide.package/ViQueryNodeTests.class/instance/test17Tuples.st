tests
test17Tuples

	| q |
	q := [:s | {s. s size}] -> {Symbol. {Symbol. Integer}}.
	sut firstStep: (ViQueryStep use: #(foo bar) in: q).

	self
		assert: 2 equals: sut childCount;
		assert: #foo equals: (sut childAt: 1) object;
		assert: #foo equals: ((sut childAt: 1) at: #'1_object');
		assert: 3 equals: ((sut childAt: 1) at: #objects) second;
		assert: ((sut childAt: 1) inputForChildren hasEqualElements: #(foo 3)).