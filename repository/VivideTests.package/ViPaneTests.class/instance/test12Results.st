tests
test12Results

	| script |
	script := [:label | label size] asScript.
	sut
		script: script;
		objects: #(house tree egg).
	self assert: #(5 4 3) equals: sut results asArray.