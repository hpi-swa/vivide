tests
test07KeepAddedQuery

	| q1 q2 |
	q1 := {
		[:num | num * num] -> {#label -> #a. #inputKind -> Number. #outputKind -> Number}.
		[:num | #text -> num asString]} asScript.
	q2 := {
		[:morph | morph color] -> {#label -> #b. #inputKind -> Morph. #outputKind -> Color}.
		[:color | #text -> color name]} asScript.

	sut
		queries: {q1.q2};
		objects: #(1 2 3).
	
	self assert: sut currentQuery == q1.
	sut copyQuery.
	self assert: sut currentQuery ~~ q1.
	self assert: sut currentQuery ~~ q2.
	sut objects: #(4 5 6). "No change because type matches."
	self assert: sut currentQuery ~~ q1.
	self assert: sut currentQuery ~~ q2.
	sut objects: {Morph new}. "Use other query because type matches no more."
	self assert: sut currentQuery == q2.