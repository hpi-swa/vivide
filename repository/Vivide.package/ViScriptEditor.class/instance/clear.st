as yet unclassified
clear

	super clear.

	self object ifNotNil: [:step |
		step sourceCode
			ifEmpty: [	self activateWizard]
			ifNotEmpty: [self deactivateWizard].
	].	

	self updateToolbars.
	self updateUi.