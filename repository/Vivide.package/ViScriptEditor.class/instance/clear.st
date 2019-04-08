memento - cleanup
clear

	super clear.

	self input: nil.
	self removePaneHighlights.

	self object ifNotNil: [:step |
		step referenceInArchive isValid
			ifFalse: [self updateObjectVersion].

		(step valueOfProperty: #isNew ifAbsent: [false])
			ifTrue: [self activateWizard]
			ifFalse: [self deactivateWizard]].	

	(self valueOfProperty: #cycleBtn) ifNotNil: [:btn |
		btn passenger: self object].

	self updateUi.