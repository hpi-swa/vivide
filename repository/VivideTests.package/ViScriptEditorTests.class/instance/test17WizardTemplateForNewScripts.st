tests - multiple
test17WizardTemplateForNewScripts

	| node |
	script := { [:object | object] -> { #isNew -> true } }  asScript.
	self setUpWindow: #(1 2 3).
	
	node := RBParser parseExpression: editor visibleSourceCode.
	self
		assert: node isBlock;
		assert: (node argumentNames hasEqualElements: #('smallInteger'));
		shouldnt: [Compiler evaluate: editor visibleSourceCode] raise: Error.