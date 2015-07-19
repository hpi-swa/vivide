tests
test06DeepCopyAndOpen

	| newPane deepCopy tool |
	newPane := sut acceptDroppingObject: #(2 4) at: 50@50 from: pane.
	newPane currentQuery setProperty: #isNew toValue: nil. "Will not get copied otherwise."
	newPane currentQuery: ([:num | (String new: num) atAllPut: $x] asScript
		adoptOrganization: sut organization;
		yourself).
	deepCopy := self metaScript deepCopy.
	
	tool := ViPane new
		currentQuery: deepCopy;
		objects: #(1 2 3 4);
		yourself.
		
	"ActiveWorld doOneSubCycle."
	self assert: (tool view isKindOf: ViMultiPaneWidget).
	tool view panesSorted in: [:panes |
		self assert: 2 equals: panes size.
		self
			assert: pane currentQuery sourceCode 
			equals: panes first currentQuery sourceCode.
		self
			assert: newPane currentQuery sourceCode 
			equals: panes second currentQuery sourceCode.
		self assert: (panes first connections anySatisfy: [:c |
			c source == panes first and: [c target == panes second]]).
		self assert: (#(1 2 3 4) hasEqualElements: panes first objects).
		self assert: 2 equals: panes second recentQueries size.
		
		self
			assert: newPane recentQueries first sourceCode
			equals: panes second recentQueries first sourceCode.
		self
			assert: newPane recentQueries second sourceCode
			equals: panes second recentQueries second sourceCode.			
			].