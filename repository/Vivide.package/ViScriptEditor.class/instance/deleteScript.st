actions
deleteScript

	self updateContext.
	otherSteps size = 1 ifTrue: [
		self
			warn: 'You cannot remove the only script part.'
			for: self.
		^ self "I am the last one."].

	self object organization deleteStep: self object.
	
	ViLoggingService trigger: {#message -> 'Script part removed.'}.
	
	self flag: #useNotifierCallback. "mt: Do not close by yourself? Like method editors do when deleting methods."
	self close.

	"All panes should now start with the next step."
	otherSteps first == self object ifTrue: [
		ViPane allInstancesDo: [:pane | 
			pane currentQuery == self object
				ifTrue: [
					pane currentQuery: self object next.
					pane recentQueries remove: self object "not valid anymore"]]].