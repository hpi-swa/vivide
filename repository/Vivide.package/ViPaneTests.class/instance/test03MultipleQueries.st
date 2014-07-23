as yet unclassified
test03MultipleQueries

	| q1 q2 |
	q1 := ViQueryStep convertList: {
		[:num | num * num] -> {Number.Number}.
		[:num | #text -> num asString]}.
	q2 := ViQueryStep convertList: {
		[:morph | morph color] -> {Morph.Color}.
		[:color | #text -> color name]}.
	
	sut queries: {q1.q2}; objects: #(1 2 3).
	self assert: sut currentQuery == q1.
	
	sut objects: {Morph new color: Color yellow; yourself}.
	self assert: sut currentQuery == q2.