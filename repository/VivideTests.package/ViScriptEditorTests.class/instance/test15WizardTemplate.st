tests - multiple
test15WizardTemplate
	"Insert a new step after an existing step. Test the variable name -- or source code -- the wizard offers to use."
	
	| newEditor node |
	script := [:num | num * num] asScript.
	self setUpWindow: #(1 2 3).
	editor addStep.
	
	newEditor := window artifactContainers third.
	self assert: (newEditor thisStep valueOfProperty: #isNew).
	
	node := RBParser parseExpression: newEditor visibleSourceCode.
	self
		assert: node isBlock;
		assert: (node argumentNames hasEqualElements: #('smallInteger'));
		shouldnt: [Compiler evaluate: newEditor visibleSourceCode] raise: Error.

	"On save, do not store that inputKind."
	newEditor visibleSourceCode: '[:num | num + 1]'.
	newEditor acceptSourceCode.
	self deny: (newEditor thisStep hasProperty: #inputKind).
	
	"Does the entire script work?"
	self
		assert: #(2 5 10)
		equals: (script interpretScriptWith: #(1 2 3)) objects asArray.