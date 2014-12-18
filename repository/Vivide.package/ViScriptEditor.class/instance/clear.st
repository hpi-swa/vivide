memento - cleanup
clear

	super clear.

	self object ifNotNil: [:step |
		(step valueOfProperty: #isNew ifAbsent: [false])
			ifTrue: [self activateWizard]
			ifFalse: [self deactivateWizard].
	].	

	self updateToolbars.
	self updateUi.