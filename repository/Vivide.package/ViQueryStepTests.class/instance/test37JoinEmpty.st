as yet unclassified
test37JoinEmpty

	| o r e |
	o := #(1 () (4 5)).
	r := ViQueryInterpreter productOfCollections: o.
	e := #(
		(1 nil 4)
		(1 nil 5)).
	self assert: (r hasEqualElements: e).	