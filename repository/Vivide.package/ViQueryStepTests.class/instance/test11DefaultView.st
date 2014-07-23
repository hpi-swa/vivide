tests
test11DefaultView

	| q p view env |
	q := ViQueryStep collect: '[:morph | morph color]'.
	p := ViQueryStep property: '[:color | ViLabelService doObject: color]'.
	q next: p.
	
	env := ViPane new.
	view := q updateView: nil forEnvironment: env.
	self
		assert: (view isKindOf: ViStandardItemView);
		assert: view == (q updateView: view forEnvironment: env);
		assert: 1 equals: view currentVisibleView columnCount.
	
	p next: (ViQueryStep property: '[:color | ViObjectOriginService doObject: color]').
	self
		assert: view == (q updateView: view forEnvironment: env);
		assert: 2 equals: view currentVisibleView columnCount.