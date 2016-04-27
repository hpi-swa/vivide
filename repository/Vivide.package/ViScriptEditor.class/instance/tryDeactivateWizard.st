as yet unclassified
tryDeactivateWizard
	self hasUnacceptedChanges ifTrue: [^ self].
	self deactivateWizard.