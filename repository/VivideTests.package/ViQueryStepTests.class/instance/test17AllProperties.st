tests
test17AllProperties

	| q1 q2 |
	q1 := [:ea | ea * ea] asScript.
	q2 := [:num | #text -> num asString] asScript.
	q1 next: q2.
	self assert: q1 maxPropertyCount equals: q1 allPropertySteps size.
	
	q1 next: nil. "use default properties"
	self assert: q1 maxPropertyCount equals: q1 allPropertySteps size.