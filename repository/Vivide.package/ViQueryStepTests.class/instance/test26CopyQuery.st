tests
test26CopyQuery

	| q1 q2 copy1 copy2 |
	q1 := ViQueryStep collect: '[:ea | ea * ea]'.
	q2 := ViQueryStep select: '[:number | number event]'.
	q1 next: q2.
	
	copy1 := q1 copyQuery.
	copy2 := copy1 next.
	
	self
		assert: copy2 notNil;
		assert: copy1 ~~ q1;
		assert: q1 id ~= copy1 id;
		assert: q1 definition == copy1 definition;
		assert: (copy1 valueOfProperty: #copyOf) equals: q1 id.