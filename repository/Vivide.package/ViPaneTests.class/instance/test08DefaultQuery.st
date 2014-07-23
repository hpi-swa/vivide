as yet unclassified
test08DefaultQuery

	| q1 q2 |
	q1 := ViQueryStep convertList: {
		[:num | num * num] -> {Number.Number}.
		[:num | #text -> num asString]}.
	q2 := ViQueryStep convertList: {
		[:num | num * num * num] -> {Number.Number}.
		[:num | #text -> num asString]}.

	sut queries: {q1.q2}; objects: #(1 2 3).
	self assert: sut currentQuery == q1. "two matching, first is default"