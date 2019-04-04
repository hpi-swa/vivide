tests
test01EmptyQuery

	self flag: #deprecated. "mt: There is no *empty* script. But an identity script?"
	
	self assert: 0 equals: sut childCount.
	
	sut
		inputForChildren: #(1 2 3 4 5);
		firstStep: [:object | object] asScript.
	"Need to update the model now!"
	sut updateChildren.
	
	self
		assert: 1 equals: sut groups size;
		assert: 5 equals: sut childCount;
		assert: 1 equals: sut "root" properties size.
		
	sut childrenInDefaultGroup withIndexDo: [:node :idx |
		self
			assert: node properties notEmpty; "there are properties!"
			assert: idx asString equals: (node at: #'1_text');
			assert: 0 equals: node childCount].