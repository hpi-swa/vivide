as yet unclassified
test02InterpretScriptStep

	| interpreter |
	interpreter := ViScriptInterpreter
		on: [:num | num * num] asScript
		using: #(1 2 3).
	
	interpreter doNext.
	self assert: #(1 4 9) equals: interpreter objects asArray.