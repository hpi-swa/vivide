tests
test27CopyQueryCyclic
	"Such cycles are no good style..."
	
	| q1 q2 copy1 copy2 |
	q1 := [:ea | ea * ea] asScript.
	q2 := [:n | #text -> n asString] asScript.
	q1 next: q2.
	q2 next: q1.
	
	self assert: q1 hasLocalCycle.
	
	copy1 := q1 deepCopy.
	
	self
		deny: copy1 hasLocalCycle;
		assert: copy1 next next isNil.