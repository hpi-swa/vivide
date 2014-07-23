as yet unclassified
test03Model

	| model |
	model := ViQueryNode new.
	model firstStep: (ViQueryFillStep new objects: #(1 2 3); yourself).
	
	sut model: model.
	self assert: (sut objects hasEqualElements: #(1 2 3)).
	
	sut addObject: 4.
	self assert: (model firstStep objects includes: 4). "input"
	self assert: (sut objects includes: 4). "output"
	
	"stable output"
	model updateChildren.
	self assert: (sut objects includes: 4).