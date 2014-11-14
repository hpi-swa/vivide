tests
test27CopyQueryCyclic

	| q1 q2 copy1 copy2 |
	q1 := [:ea | ea * ea] asScript.
	q2 := [:n | #text -> n asString] asScript.
	q1 next: q2.
	q2 next: q1.
	
	self assert: q1 hasCycle.
	
	copy1 := q1 copyQuery.
	
	self
		assert: copy1 hasCycle;
		deny: copy1 next next == q1;
		assert: copy1 next next == copy1.