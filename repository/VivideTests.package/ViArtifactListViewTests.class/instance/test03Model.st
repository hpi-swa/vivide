as yet unclassified
test03Model

	| model |
	model := [:object | object] asScript interpretScriptWith: #(1 2 3).
	model pane: ViPane new.
	
	sut process: model.
	self assert: (sut objects hasEqualElements: #(1 2 3)).
	
	sut addObject: 4.
	self assert: (model inputForChildren includes: 4). "input"
	self assert: (sut objects includes: 4). "output"
	
	model children.
	self assert: (sut objects includes: 4).
	self assert: 4 equals: model nodes size.
		
	"stable output"
	model updateChildren.
	self assert: (sut objects includes: 4).
	self assert: 4 equals: model nodes size.