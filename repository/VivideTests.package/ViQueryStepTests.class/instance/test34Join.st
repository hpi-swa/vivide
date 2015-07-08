tests
test34Join

	| o r e |
	o := #(1 (2 3) (4 5) (6)).
	r := ViQueryInterpreter productOfCollections: o.
	e := #(
		(1 2 4 6)
		(1 2 5 6)
		(1 3 4 6)
		(1 3 5 6)).
	self assert: (r hasEqualElements: e).	
