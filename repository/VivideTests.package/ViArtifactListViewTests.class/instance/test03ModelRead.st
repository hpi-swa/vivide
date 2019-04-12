tests
test03ModelRead
	"This view should read all top-level nodes in any given model."
	
	| model |
	model := [:object | object] asScript interpretScriptWith: #(1 2 3).

	view process: model.
	self assert: (view objects hasEqualElements: #(1 2 3)).