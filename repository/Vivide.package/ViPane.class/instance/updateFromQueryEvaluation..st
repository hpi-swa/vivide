updating
updateFromQueryEvaluation: evt
	
	self model firstStep allStepsDo: [:step |
		step == evt item ifTrue: [
			evt hasFailed 
				ifTrue: [self showError: evt context]
				ifFalse: [self clearError].
			^ self]].