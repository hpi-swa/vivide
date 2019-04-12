tests
test04ModelChange
	"Any change in the model's child nodes should be noticed in this view."
	
	| model |
	model := [:object | object] asScript interpretScriptWith: #(1 2 3).
	view process: model.

	model inputForChildren: #(4 5 6).
	self forceGuiUpdate.
	self assert: (view objects hasEqualElements: #(4 5 6)).