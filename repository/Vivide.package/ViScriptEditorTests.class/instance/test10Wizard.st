as yet unclassified
test10Wizard

	editor object: [:object | object] asScript.
	editor activateWizard.

	self assert: editor shouldPropose.
	self deny: editor object isPropertyExtraction.

	editor visibleSourceCode: '[:object | #text -> object printString]'.
	editor acceptSourceCode.

	self deny: editor shouldPropose.
	self assert: editor object isPropertyExtraction.