private
processStepsGuarded
	"In case of an error, fail silently. Clear this node's children. Avoid recomputation. Give panes a chance to offer interactive debugging. Hint: #haltOnce works fine."
	
	[self processSteps]
		on: Error
		do: [:error |
			self emergencyClearFor: error.
			ViScriptNotInterpreted signal: '[ViModelNode] Script interpretation failed: ', error messageText.
			self pane ifNotNil: [:p | p triggerShowError: error node: self]]