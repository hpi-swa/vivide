tests
test15AllStepsDo
	"Are references followed correctly?"

	| q1 p q2 count |
	
	q1 := [:morph | morph submorphs] asScript.
	p := [:o | #text -> o asString] asScript asReference.
	q2 := [:morph | self haltOnce. morph owner] asScript.

	q1 next: p.
	p next: q2.
	q2 next: q1.
	count := 0.
	
	q1 allStepsDo: [:step | count := count + 1].
	self assert: 4 equals: count.