tests
test01EmptyQuery

	self assert: 0 equals: sut childCount.
	
	sut firstStep: (ViQueryFillStep new objects: #(1 2 3 4 5)).
	"Need to update the model now!"
	sut updateChildren.
	
	self
		assert: 1 equals: sut groups size;
		assert: 5 equals: sut childCount;
		assert: sut properties isEmpty.
		
	sut childrenInDefaultGroup withIndexDo: [:node :idx |
		self
			assert: node properties notEmpty; "there are properties!"
			assert: idx asString equals: (node at: #'1_text');
			assert: 0 equals: node childCount].