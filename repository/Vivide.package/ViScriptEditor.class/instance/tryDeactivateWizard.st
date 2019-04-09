actions - editing
tryDeactivateWizard

	self hasUnacceptedChanges ifTrue: [
		self warningSent: 'Please save or discard changes.'.
		^ self].

	self deactivateWizard.