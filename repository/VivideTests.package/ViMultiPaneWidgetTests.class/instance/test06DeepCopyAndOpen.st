tests
test06DeepCopyAndOpen

	| newPane deepCopy tool |
	newPane := sut acceptDroppingObject: #(2 4) at: 50@50 from: pane.
	newPane script setProperty: #isNew toValue: nil. "Will not get copied otherwise."
	newPane script: ([:num | (String new: num) atAllPut: $x] asScript
		adoptOrganization: sut organization;
		yourself).
	deepCopy := self metaScript deepCopy.
	
	tool := ViPane new
		script: deepCopy;
		yourself.
		
	tool beginUpdateChainWith: [:p | p objects: #(1 2 3 4)].
		
	"ActiveWorld doOneSubCycle."
	self assert: (tool view isKindOf: ViMultiPaneWidget).
	tool view panesSorted in: [:panes |
		self assert: 2 equals: panes size.
		self
			assert: pane script sourceCode 
			equals: panes first script sourceCode.
		self
			assert: newPane script sourceCode 
			equals: panes second script sourceCode.
		self assert: (panes first connections anySatisfy: [:c |
			c source == panes first and: [c target == panes second]]).
		self assert: (#(1 2 3 4) hasEqualElements: panes first objects).
		self assert: 2 equals: panes second recentScripts size.
		
		self
			assert: newPane recentScripts first sourceCode
			equals: panes second recentScripts first sourceCode.
		self
			assert: newPane recentScripts second sourceCode
			equals: panes second recentScripts second sourceCode.			
			].