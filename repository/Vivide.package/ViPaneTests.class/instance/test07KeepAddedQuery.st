as yet unclassified
test07KeepAddedQuery

	| q1 q2 |
	q1 := ViQueryStep convertList: {
		[:num | num * num] -> {Number.Number}.
		[:num | #text -> num asString]}.
	q2 := ViQueryStep convertList: {
		[:morph | morph color] -> {Morph.Color}.
		[:color | #text -> color name]}.

	sut
		queries: {q1.q2};
		objects: #(1 2 3).
	
	self assert: sut currentQuery == q1.
	sut addQuery.
	self assert: sut currentQuery ~~ q1.
	self assert: sut currentQuery ~~ q2.
	sut objects: #(4 5 6). "No change because type matches."
	self assert: sut currentQuery ~~ q1.
	self assert: sut currentQuery ~~ q2.
	sut objects: {Morph new}. "Use other query because type matches no more."
	self assert: sut currentQuery == q2.