private
processStepsGuarded
	"In case of an error, fail silently. Clear this node's children. Avoid recomputation. Give panes a chance to offer interactive debugging. Hint: #haltOnce works fine."
	
	[self processSteps]
		on: Error
		do: [:error |
			self emergencyClearFor: error.
			self pane
				ifNil: [Transcript showln: '[ViModelNode] Script interpretation failed: ', error messageText]
				ifNotNil: [:p | p triggerShowError: error node: self]]