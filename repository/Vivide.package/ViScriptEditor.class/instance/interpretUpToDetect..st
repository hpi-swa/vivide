support - debugging
interpretUpToDetect: block

	| input |
	input := self originalInput. "We need to call this here because we need to have updated context."

	self checkAllStepsConnected ifFalse: [^ nil].
		
	^ (ViQueryInterpreter
		on: self allSteps first
		using: input)
			upToDetect: block;
			yourself