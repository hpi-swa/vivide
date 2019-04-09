tests
test10Wizard

	editor object: [:object | object] asScript.
	editor activateWizard.

	self assert: editor isWizardActive.
	self deny: editor object isPropertyExtraction.

	editor visibleSourceCode: '[:object | #text -> object printString]'.
	editor acceptSourceCode.

	self deny: editor isWizardActive.
	self assert: editor object isPropertyExtraction.