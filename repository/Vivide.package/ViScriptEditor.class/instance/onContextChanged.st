updating
onContextChanged

	self updateContext.
	self assureAllStepsConnected.
	
	"Since the wizard suggests input names, a changed context can change that suggestions. However, only update if the user did not type anything already."
	(self isWizardActive and: [self hasUnacceptedChanges not])
		ifTrue: [self activateWizard].