tests
test07NonIdentityScript
	"There can be scripts that actually transform the input object. This might interfere with the view trying to update model input."

	| model |
	model := [:num | num * 2] asScript interpretScriptWith: #(1 2 3).
		
	view process: model. 
	self assert: (view objects hasEqualElements: #(2 4 6)).
	
	"1) Check model contents"
	self assert: (model inputForChildren hasEqualElements: #(1 2 3)).
	self assert: (model objects hasEqualElements: #(2 4 6)).
	self forceGuiUpdate.
	self assert: (model objects hasEqualElements: #(2 4 6)).
	
	"2) Now do something in the list. Like a change of editors sort order."
	view artifactContainers last comeToFront.
	self assert: (view objects hasEqualElements: #(6 2 4)). "Order changed"
	self assert: (model inputForChildren hasEqualElements: #(6 2 4)). "New input propagated"
	self assert: (model objects hasEqualElements: #(2 4 6)). "No update yet. Just triggered."

	"3) Do the model update!"
	self forceGuiUpdate.
	self assert: (model objects hasEqualElements: #(12 4 8)).
	self assert: (view objects hasEqualElements: #(12 4 8)).