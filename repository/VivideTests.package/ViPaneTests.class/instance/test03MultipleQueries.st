tests
test03MultipleQueries

	| q1 q2 |
	q1 := {
		[:num | num * num] -> {#label -> #a. #inputKind -> Number. #outputKind -> Number}.
		[:num | #text -> num asString]} asScript.
	q2 := {
		[:morph | morph color] -> {#label -> #b. #inputKind -> Morph. #outputKind -> Color}.
		[:color | #text -> color name]} asScript.
	
	sut queries: {q1.q2}; objects: #(1 2 3).
	self
		assert: (sut appropriateScripts includes: q1);
		assert: sut script == q1.
	
	sut objects: {Morph new color: Color yellow; yourself}.
	self assert: sut script == q2.