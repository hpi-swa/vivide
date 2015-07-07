tests
test11DefaultView

	| q p view env |
	q := [:morph | morph color] asScript.
	p := [:color | #text -> (ViLabelService doObject: color)] asScript.
	q next: p.
	
	env := ViPane new.
	view := q updateView: nil forEnvironment: env.
	self
		assert: (view isKindOf: ViStandardItemView);
		assert: view == (q updateView: view forEnvironment: env);
		assert: 1 equals: view currentVisibleView columnCount.
	
	p next: [:color | #text -> (ViObjectOriginService doObject: color)] asScript.
	self
		assert: view == (q updateView: view forEnvironment: env);
		assert: 2 equals: view currentVisibleView columnCount.