tests
test01CopyEditor

	| copy |
	sut pane currentQuery: [:num | num * 2] asScript.
	
	copy := sut copyEditor.
	
	self assert: sut color ~~ copy color.
	self assert: sut extent equals: copy extent.
	self assert: sut pane currentQuery ~~ copy pane currentQuery.