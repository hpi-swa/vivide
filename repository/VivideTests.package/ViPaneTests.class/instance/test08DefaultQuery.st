tests
test08DefaultQuery

	| q1 q2 |
	q1 := {
		[:num | num * num] -> {#label -> #a. #inputKind -> Number. #outputKind -> Number}.
		[:num | #text -> num asString]} asScript.
	q2 := {
		[:morph | morph color] -> {#label -> #b. #inputKind -> Morph. #outputKind -> Color}.
		[:color | #text -> color name]} asScript.

	sut queries: {q1.q2}; objects: #(1 2 3).
	self assert: sut currentQuery == q1. "two matching, first is default"