tests
test11DefaultView

	| q p view env |
	q := [:morph | morph color] asScript.
	p := [:color | #text -> (ViLabelService doObject: color)] asScript.
	q next: p.
	
	env := ViPane new.
	
	view := q viewClass new.
	view setUp: q.
	
	self
		assert: (view isKindOf: ViStandardItemView);
		assert: view == (env updateView; view);
		assert: 1 equals: view currentVisibleView columnCount.
	
	p next: [:color | #text -> (ViObjectOriginService doObject: color)] asScript.
	view setUp: q.	
	
	self
		assert: view == (env updateView; view);
		assert: 2 equals: view currentVisibleView columnCount.