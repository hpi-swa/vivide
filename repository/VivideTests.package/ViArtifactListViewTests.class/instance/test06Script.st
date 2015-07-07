as yet unclassified
test06Script

	| script model |
	script := [:num | num * 2] asScript.
	model := ViQueryNode new.
	
	model firstStep: (ViQueryStep use: #(1 2 3 4) in: script).
	sut model: model. 
	self assert: (sut objects hasEqualElements: #(2 4 6 8)).