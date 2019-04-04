support - debugging
interpretUpToDetect: block

	| input |
	input := self originalInput. "We need to call this here because we need to have updated context."

	otherSteps overlappingPairsDo: [:s1 :s2 |
		s1 next == s2 ifFalse: [
			self warningSent: 'Some steps are not connected. Fix that first.'.
			^ nil]].
		
	^ (ViQueryInterpreter
		on: otherSteps first
		using: input)
			upToDetect: block;
			yourself