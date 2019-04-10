as yet unclassified
test05ModelWrite
	"This view is able to actually change the model input."
	
	| model |
	model := [:object | object] asScript interpretScriptWith: #(1 2 3).
	view process: model.

	view objects: #(4 5 6).
	self assert: (model inputForChildren hasEqualElements: #(4 5 6)).
	
	"Reset and update of children is deferred to avoid duplicate updates."
	self assert: (model objects hasEqualElements: #(1 2 3)).
	self forceGuiUpdate.
	self assert: (model objects hasEqualElements: #(4 5 6)).