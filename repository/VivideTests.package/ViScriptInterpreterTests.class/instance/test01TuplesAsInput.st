tests - tuples and groups
test01TuplesAsInput

	| interpreter |
	interpreter := ViScriptInterpreter
		on: [:num :offset | num + offset] asScript
		using: #( (7 1) (8 -1) (9 0) ).
	interpreter upToEnd.

	self assert: #(8 7 9) equals: interpreter objects asArray.