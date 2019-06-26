actions
deleteScript

	self allSteps size = 1 ifTrue: [
		self
			warn: 'You cannot remove the only script part.'
			for: self.
		^ self "I am the last one."].

	"This script must not be *new* because editor updates can happen in the deletion process, which would activate the wizard and try to interpret the script to collect input information. See #activateWizard and #updateInput."
	self thisStep setProperty: #isNew toValue: nil.
	
	self thisStep organization deleteStep: self thisStep.
	
	ViLoggingService trigger: {#message -> 'Script part removed.'}.
	
	self flag: #useNotifierCallback. "mt: Do not close by yourself? Like method editors do when deleting methods."
	self close.

	"All panes should now start with the next step."
	self allSteps first == self thisStep ifTrue: [
		ViPane allInstancesDo: [:pane | 
			pane currentQuery == self thisStep
				ifTrue: [
					pane currentQuery: self thisStep next from: self.
					
					self flag: #hiddenMagic. "mt: Make it more explicit to the pane."
					pane recentQueries remove: self thisStep "not valid anymore"]]].