updating
updateFromQueryEvaluation: evt
	
	self flag: #metaScript.
	(self currentQuery notNil and: [self currentQuery isMeta])
		ifTrue: [ "Do not follow references for meta scripts."
			self model firstStep stepsDo: [:step |
				step == evt item ifTrue: [
					evt hasFailed 
						ifTrue: [self halt. self showError: evt context]
						ifFalse: [self clearError].
					^ self]].
			^ self].
		
	self model firstStep allStepsDo: [:step |
		step == evt item ifTrue: [
			evt hasFailed 
				ifTrue: [self showError: evt context]
				ifFalse: [self clearError].
			^ self]].