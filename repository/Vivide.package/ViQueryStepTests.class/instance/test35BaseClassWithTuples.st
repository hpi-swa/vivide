as yet unclassified
test35BaseClassWithTuples

	| q |
	q := ViQueryStep convert: [:a :b | a + b] -> {{Integer.Integer}.Integer}.
	self assert: (q baseClass hasEqualElements: {Integer.Integer}).