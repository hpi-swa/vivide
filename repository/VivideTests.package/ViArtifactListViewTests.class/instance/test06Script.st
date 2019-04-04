as yet unclassified
test06Script

	| script model |
	script := [:num | num * 2] asScript.
	model := ViQueryNode new.
	
	model
		inputForChildren: #(1 2 3 4);
		firstStep: script.
		
	sut process: model. 
	self assert: (sut objects hasEqualElements: #(2 4 6 8)).