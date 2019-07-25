tests
test25AppropriateQueries

	| global normal |
	global := {[#(1 2 3 4 5)] -> {#isGlobal -> true. #label -> 'A'}} asScript.
	normal := {[:a | a + 1] -> {#label -> 'B'}} asScript.
	
	sut queries: [{global. normal}].

	sut objects: #(1).
	self assert: sut appropriateScripts last == normal.

	sut objects: #().
	self assert: sut appropriateScripts last == global.