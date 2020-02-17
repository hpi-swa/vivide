memento - cleanup
clear

	super clear.

	self input: nil.
	self removePaneHighlights.

	self object ifNotNil: [:step |
		
		"Do the initial export for this script step if necessary."
		step referenceInArchive isValid ifFalse: [step export].

		(step valueOfProperty: #isNew) == true
			ifTrue: [self activateWizard]
			ifFalse: [self deactivateWizard]].	

	(self valueOfProperty: #cycleBtn) ifNotNil: [:btn |
		btn passenger: self object].

	self updateUi.